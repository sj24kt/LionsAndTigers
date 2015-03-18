//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopViewControllerDelegate <NSObject>

@optional

// protocol method declarations - implement in ZVC
- (void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic, assign) id <TopViewControllerDelegate> delegate;

// declared a instance method
//- (void)doSomething;

@end
































