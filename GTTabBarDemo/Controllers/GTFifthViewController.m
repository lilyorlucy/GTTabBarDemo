//
//  GTFifthViewController.m
//  GTTabBarDemo
//
//  Created by GTL on 13-6-7.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import "GTFifthViewController.h"

@interface GTFifthViewController ()

@end

@implementation GTFifthViewController

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
    self.navigationItem.title = @"Fifth";
    self.view.backgroundColor = [UIColor brownColor];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
