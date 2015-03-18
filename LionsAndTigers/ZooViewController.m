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
@property TopViewController *topVC;
@property HUDViewController *hudVC;
@end

@implementation ZooViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"%li", self.childViewControllers.count);
//    NSLog(@"Class = %@", [self.childViewControllers[0] class]);
//    NSLog(@"Class = %@", [((UINavigationController *)self.childViewControllers[1]).childViewControllers[0] class]);
    self.hudVC = self.childViewControllers[0];
    self.topVC = ((UINavigationController *)self.childViewControllers[1]).childViewControllers[0];

    //[self.hudVC doSomething];

}

- (void)loadLionImages {

}
- (void)loadTigerImages {

}






@end

























