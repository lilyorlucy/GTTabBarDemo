//
//  GTSettingViewController.m
//  GTTabBarDemo
//
//  Created by GTL on 13-6-9.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import "GTSettingViewController.h"

@interface GTSettingViewController ()

@end

@implementation GTSettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title = @"设置";
    
    UIButton *navButton = [[UIButton alloc] initWithFrame:CGRectMake(320-70, 10, 36, 36)];
    [navButton setImage:[UIImage imageNamed:@"back-button@2x.png"] forState:UIControlStateNormal];
    [navButton setImage:[UIImage imageNamed:@"back-button-hover@2x.png"] forState:UIControlStateHighlighted];
    [navButton addTarget:self action:@selector(pressedButton:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *buttonItems = [[UIBarButtonItem alloc] initWithCustomView:navButton];
    self.navigationItem.leftBarButtonItem = buttonItems;
    
    self.navigationItem.leftItemsSupplementBackButton = NO;
    
    //self.navigationItem.title = @"Second";
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 367+88)];
    bgImageView.backgroundColor = [UIColor clearColor];
    bgImageView.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"bg2" ofType:@"png"]];
    [self.view addSubview:bgImageView];
    self.view.backgroundColor = [UIColor purpleColor];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
