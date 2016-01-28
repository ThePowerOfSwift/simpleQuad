//
//  PlacementViewController.m
//  simpleQuad
//
//  Created by Paul Zabelin on 1/28/16.
//  Copyright © 2016 Flowering Dahlia. All rights reserved.
//

#import "PlacementViewController.h"
#import "UIImageView+CoordinateTransform.h"
#import "simpleQuad-Swift.h"
@import QuartzCore;

@interface PlacementViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *container;
@property (weak, nonatomic) IBOutlet UIView *overlay;

@end

@implementation PlacementViewController

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    CGPoint topLeft = CGPointMake(96, 119);
    CGPoint topRight = CGPointMake(361, 101);
    CGPoint bottomLeft = CGPointMake(118, 473);
    CGPoint bottomRight = CGPointMake(382, 457);



    Quadrilateral *quad = [Quadrilateral new];
    quad.topLeft = [self.container viewPointFromPixelPoint:topLeft];
    quad.topRight = [self.container viewPointFromPixelPoint:topRight];
    quad.bottomLeft = [self.container viewPointFromPixelPoint:bottomLeft];
    quad.bottomRight = [self.container viewPointFromPixelPoint:bottomRight];

    [UIView animateWithDuration:1.0 animations:^{
        self.overlay.frame = [quad box];
        self.overlay.layer.transform = [quad transformToFit:self.overlay.bounds anchorPoint:self.overlay.layer.position];
    }];

}


- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
