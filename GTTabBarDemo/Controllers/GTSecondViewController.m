//
//  GTSecondViewController.m
//  GTTabBarDemo
//
//  Created by GTL on 13-6-7.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import "GTSecondViewController.h"

@interface GTSecondViewController ()

@end

@implementation GTSecondViewController

#pragma mark - View lifecycle methods
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
    self.navigationItem.title = @"Second";
    self.navigationItem.leftItemsSupplementBackButton = NO;
    self.view.backgroundColor = [UIColor greenColor];
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
