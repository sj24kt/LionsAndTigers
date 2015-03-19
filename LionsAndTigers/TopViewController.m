//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

// thread the delegate method
- (IBAction)topRevealButtonTapped:(id)button {

    [self.delegate topRevealButtonTapped];

}


@end
