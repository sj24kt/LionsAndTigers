//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

// thread the delegate method
- (IBAction)lionsButtonTapped:(UIButton *)button {
    [self.delegate loadLionImages];
}

- (IBAction)tigersButtonTapped:(UIButton *)button {
    [self.delegate loadTigerImages];
}


@end

















