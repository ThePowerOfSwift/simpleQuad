//
//  OverlayViewController.swift
//  simpleQuad
//
//  Created by Paul Zabelin on 2/15/16.
//  Copyright © 2016 Flowering Dahlia. All rights reserved.
//

import UIKit
import ImageCoordinateSpace


class OverlayViewController: UIViewController {
    @IBOutlet weak var containerImageView: UIImageView!
    @IBOutlet weak var overlayView: UIView!
    let svgPoints = "108.315837 80.1687782 377.282671 41.4352201 459.781253 251.836131 193.321418 330.023027"

    func updateOverlayPosition() {
        let points = svgPoints.componentsSeparatedByString(" ").map{CGFloat(($0 as NSString).floatValue)}
        let coordinates = 0.stride(to: points.count, by: 2).map{CGPoint(x: points[$0], y: points[$0 + 1])}
        print(coordinates)

        let quad = Quadrilateral()
        quad.topLeft = coordinates[0]
        quad.topRight = coordinates[1]
        quad.bottomRight = coordinates[2]
        quad.bottomLeft = coordinates[3]

        let imageSpace = containerImageView.imageCoordinateSpace

        quad.modifyPoints { (imagePoint) -> CGPoint in
            return imageSpace.convertPoint(imagePoint, toCoordinateSpace: self.view)
        }

        overlayView.frame = quad.box()
        overlayView.layer.transform = quad.transformToFit(overlayView.bounds,
            anchorPoint: overlayView.layer.position)

    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        updateOverlayPosition()
    }
}