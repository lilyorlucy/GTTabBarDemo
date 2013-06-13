//
//  GTAppDelegate.h
//  GTTabBarDemo
//
//  Created by GTL on 13-6-5.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GTTabBarController.h"

@class GTLoadingViewController;

@interface GTAppDelegate : UIResponder <UIApplicationDelegate, UINavigationControllerDelegate, GTTabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) GTLoadingViewController *loadingViewController;
@property (nonatomic, strong) GTTabBarController *mainTabBarController;

- (void)loadMainView;
- (void)loadingViewAnimation;
@end
