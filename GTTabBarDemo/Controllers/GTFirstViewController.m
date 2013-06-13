//
//  GTFirstViewController.m
//  GTTabBarDemo
//
//  Created by GTL on 13-6-6.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import "GTFirstViewController.h"
#import "GTDetailViewController.h"
#import "GTAppDelegate.h"
#import "GTTabBarController.h"
#import "GTSettingViewController.h"

@interface GTFirstViewController ()

@end

@implementation GTFirstViewController
@synthesize dataArray;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// this is called when its tab is first tapped by the user
- (void)viewDidLoad
{
	[super viewDidLoad];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav-bar.png"] forBarMetrics:0];
    
    UIView *natView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    natView.backgroundColor = [UIColor clearColor];
    UIImageView *logoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(140/2, 7/2.0, 180, 37)];
    logoImageView.image = [UIImage imageNamed:@"logo@2x.png"];
    [natView addSubview:logoImageView];
    self.navigationItem.titleView = natView;
    
    UIButton *navButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 36, 36)];
    [navButton setImage:[UIImage imageNamed:@"home-icon-set@2x.png"] forState:UIControlStateNormal];
    [navButton addTarget:self action:@selector(pressedButton:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *buttonItems = [[UIBarButtonItem alloc] initWithCustomView:navButton];
	self.navigationItem.rightBarButtonItem = buttonItems;
    
    self.dataArray = [NSArray arrayWithObjects:@"Mac Pro", @"Mac mini", @"iMac", @"MacBook", @"MacBook Pro", @"MacBook Air", @"Mac Pro", @"Mac mini", @"iMac", @"MacBook", @"MacBook Pro", @"MacBook Air", @"iMac", @"MacBook", @"MacBook Pro", @"MacBook Air", nil];
    
    gtTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, SCREEN_HEIGHT)];
    gtTableView.delegate = self;
    gtTableView.dataSource = self;
    gtTableView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:gtTableView];
    self.view.backgroundColor = [UIColor grayColor];
}

- (IBAction)pressedButton:(id)sender {
    GTSettingViewController *settingViewCtr = [[GTSettingViewController alloc] init];
    settingViewCtr.hidesBottomBarWhenPushed = NO;
    [self.navigationController pushViewController:settingViewCtr animated:YES];
}

#pragma mark -
#pragma mark UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.dataArray count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    GTDetailViewController *detailViewCtr = [[GTDetailViewController alloc] init];
    detailViewCtr.hidesBottomBarWhenPushed = NO;
    [self.navigationController pushViewController:detailViewCtr animated:YES];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *kCellID = @"cellID";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellID];
	if (cell == nil)
	{
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellID];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
		cell.selectionStyle = UITableViewCellSelectionStyleBlue;
	}
	cell.textLabel.text = [self.dataArray objectAtIndex:indexPath.row];
	return cell;
}

#pragma mark UIScrollViewDelegate Methods
- (void)scrollViewDidScroll:(UIScrollView *)sender {
    if (gtTableView.contentOffset.y <= 5) {
        [self.gtTabBarController hidesTabBar:NO animated:YES driect:0];
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }
    if (gtTableView.contentOffset.y > 50) {
        [self.gtTabBarController hidesTabBar:YES animated:YES];
        [self.navigationController setNavigationBarHidden:YES animated:YES];
    }
}

@end

