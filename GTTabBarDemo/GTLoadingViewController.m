//
//  GTLoadingViewController.m
//  GTTabBarDemo
//
//  Created by GTL on 13-6-6.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import "GTLoadingViewController.h"
#import "GTAppDelegate.h"

@interface GTLoadingViewController ()

@end

@implementation GTLoadingViewController

@synthesize bgImageView1;
@synthesize bgImageView2;

#pragma mark - View lifecycle methods
- (void)viewDidLoad
{
    bgImageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, -20, 160, 460+88)];
    bgImageView1.backgroundColor = [UIColor clearColor];
    bgImageView1.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"loading_01" ofType:@"png"]];
    [self.view addSubview:bgImageView1];
    bgImageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(160, -20, 160, 460+88)];
    bgImageView2.backgroundColor = [UIColor clearColor];
    bgImageView2.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"loading_02" ofType:@"png"]];
    [self.view addSubview:bgImageView2];
    
    _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(150, 400, 20, 20)];
    _activityIndicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    _activityIndicatorView.hidesWhenStopped = YES;
    [_activityIndicatorView startAnimating];
    [self.view addSubview:_activityIndicatorView];
    
    [self performSelector:@selector(loadingDone) withObject:nil afterDelay:0.6];    // 假设加载3秒中
    
    [super viewDidLoad];
}

- (void)loadingDone
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(GTAppDelegate *)[UIApplication sharedApplication].delegate loadingViewAnimation];
    [_activityIndicatorView stopAnimating];
}

@end
