//
//  DemoViewController.swift
//  simpleQuad
//
//  Created by Paul Zabelin on 1/28/16.
//  Copyright © 2016 Flowering Dahlia. All rights reserved.
//
import UIKit
import QuartzCore


public class DemoViewController :UIViewController {

    @IBOutlet weak var topLeft: UIImageView!
    @IBOutlet weak var topRight: UIImageView!
    @IBOutlet weak var bottomLeft: UIImageView!
    @IBOutlet weak var bottomRight: UIImageView!
    @IBOutlet weak var imageView: UIImageView!

    override public func viewDidLoad() {

    }
    
    @IBAction func toObjC(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onPan(recognizer: UIPanGestureRecognizer) {
        let controlPoint = recognizer.view! as! UIImageView
        controlPoint.highlighted = recognizer.state == .Changed
        let translation = recognizer.translationInView(view)
        controlPoint.center = CGPoint(x: controlPoint.center.x + translation.x,
            y: controlPoint.center.y + translation.y)
        recognizer.setTranslation(CGPointZero, inView: view)

        let quad = Quadrilateral()
        quad.topLeft = topLeft.center
        quad.topRight = topRight.center
        quad.bottomLeft = bottomLeft.center
        quad.bottomRight = bottomRight.center

        imageView.frame = quad.box()
        imageView.layer.transform = quad.transformToFit(imageView.bounds, anchorPoint: imageView.layer.position)

    }
}
