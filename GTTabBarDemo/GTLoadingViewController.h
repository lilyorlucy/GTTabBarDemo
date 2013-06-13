//
//  GTLoadingViewController.h
//  GTTabBarDemo
//
//  Created by GTL on 13-6-6.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTLoadingViewController : UIViewController
{
    UIActivityIndicatorView     *_activityIndicatorView;
}

@property (nonatomic, strong)     UIImageView *bgImageView1;
@property (nonatomic, strong)     UIImageView *bgImageView2;

@end
