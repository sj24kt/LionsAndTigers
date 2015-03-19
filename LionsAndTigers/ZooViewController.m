//
//  ZooViewController.m
//  LionsAndTigers
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "ZooViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

// implementing these protocols
@interface ZooViewController () <TopViewControllerDelegate, HUDViewControllerProtocol>
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightConstraint;
@property (strong, nonatomic) IBOutlet UIView *topContainer;

@property TopViewController *topVC; // The top view controller on the stack
@property HUDViewController *hudVC; // Return modal view controller if it exists.
                                    // Otherwise the top view controller
@property NSMutableArray *viewControllers; // The current view controller stack

@end

@implementation ZooViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"%li", self.childViewControllers.count);
//    NSLog(@"Class = %@", [self.childViewControllers[0] class]);
////    NSLog(@"Class = %@", [((UINavigationController *)self.childViewControllers[1]).childViewControllers[0] class]);
//    self.hudVC = self.childViewControllers[0];
//    self.topVC = ((UINavigationController *)self.childViewControllers[1]).childViewControllers[0];
//
//    //[self.hudVC doSomething];


    self.topVC.delegate = self;
    self.hudVC.delegate = self;

}

- (void)topRevealButtonTapped {
    [UIView animateWithDuration:1.0 animations:^{
        if (self.leftConstraint.constant == -16) {
            self.leftConstraint.constant = 100;
            self.rightConstraint.constant = -100;
        } else {
            self.leftConstraint.constant = -16;
            self.rightConstraint.constant = -16;
        }
        [self.view layoutIfNeeded];
    }];
}

- (void)loadLionImages {



}
- (void)loadTigerImages {

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"TopSegue"]) {
        UINavigationController *navController = segue.destinationViewController;
        self.topVC = [navController.viewControllers objectAtIndex:0];
    }
}

@end

























