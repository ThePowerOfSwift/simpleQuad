//
//  UIView+Quadrilateral.h
//  simpleQuad
//
//  Created by Paul Zabelin on 1/28/16.
//  Copyright © 2016 Flowering Dahlia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIView (Quadrilateral)

//Sets frame to bounding box of quad and applies transform
- (void)transformToFitQuadTopLeft:(CGPoint)tl topRight:(CGPoint)tr bottomLeft:(CGPoint)bl bottomRight:(CGPoint)br;

@end