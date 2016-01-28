//
//  UIImageView+CoordinateTransform.h
//  simpleQuad
//
//  Created by Paul Zabelin on 1/28/16.
//  Copyright © 2016 Flowering Dahlia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (CoordinateTransform)
-(CGPoint) pixelPointFromViewPoint:(CGPoint)viewPoint;
-(CGPoint) viewPointFromPixelPoint:(CGPoint)pixelPoint;
-(CGSize) pixelSizeFromViewSize:(CGSize)viewSize;
-(CGSize) viewSizeFromPixelSize:(CGSize)pixelSize;
@end