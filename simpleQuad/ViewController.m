//
//  ViewController.m
//  simpleQuad
//
//  Created by Paul Zabelin on 1/28/16.
//  Copyright © 2016 Flowering Dahlia. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Quadrilateral.h"
#import "simpleQuad-Swift.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *topLeft;
@property (weak, nonatomic) IBOutlet UIImageView *topRight;
@property (weak, nonatomic) IBOutlet UIImageView *bottomLeft;
@property (weak, nonatomic) IBOutlet UIImageView *bottomRight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.imageView transformToFitQuadTopLeft:CGPointMake(1, 1)
                                     topRight:CGPointMake(100, 1)
                                   bottomLeft:CGPointMake(1, 100)
                                  bottomRight:CGPointMake(100, 100)];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onPan:(UIPanGestureRecognizer *)recognizer {

    UIImageView *controlPointView = (UIImageView *)[recognizer view];
    controlPointView.highlighted = recognizer.state == UIGestureRecognizerStateChanged;

    CGPoint translation = [recognizer translationInView:self.view];
    CGPoint center = controlPointView.center;
    center.x += translation.x;
    center.y += translation.y;
    controlPointView.center = center;
    [recognizer setTranslation:CGPointZero inView:self.view];

    [self.imageView transformToFitQuadTopLeft:self.topLeft.center
                                     topRight:self.topRight.center
                                   bottomLeft:self.bottomLeft.center
                                  bottomRight:self.bottomRight.center];

}

@end
