//
//  PlacementViewController.m
//  simpleQuad
//
//  Created by Paul Zabelin on 1/28/16.
//  Copyright © 2016 Flowering Dahlia. All rights reserved.
//

#import "PlacementViewController.h"

@interface PlacementViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *container;
@property (weak, nonatomic) IBOutlet UIView *overlay;

@end

@implementation PlacementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
