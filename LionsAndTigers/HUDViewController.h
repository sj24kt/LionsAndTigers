//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Sherrie Jones on 3/18/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDViewControllerProtocol <NSObject>

// protocol method declarations - implement in ZVC
- (void)loadLionImages;
- (void)loadTigerImages;

@end

@interface HUDViewController : UIViewController

@property (nonatomic, assign) id <HUDViewControllerProtocol> delegate;
@property (strong, nonatomic) IBOutlet UIButton *lionsButtonTapped;
@property (strong, nonatomic) IBOutlet UIButton *tigersButton;

// declared a instance method
//- (void)doSomething;

@end