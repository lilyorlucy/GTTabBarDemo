//
//  GTAppDelegate.m
//  GTTabBarDemo
//
//  Created by GTL on 13-6-5.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import "GTAppDelegate.h"

#import "GTTabBarController.h"
#import "GTLoadingViewController.h"

#import "GTFirstViewController.h"
#import "GTSecondViewController.h"
#import "GTThirdViewController.h"
#import "GTFourthViewController.h"
#import "GTFifthViewController.h"

@implementation GTAppDelegate


#pragma mark CircleLife
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
//    self.viewController = [[GTViewController alloc] initWithNibName:@"GTViewController" bundle:nil];
//    self.window.rootViewController = self.viewController;
//    [self.window makeKeyAndVisible];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self loadMainView];
    self.loadingViewController = [[GTLoadingViewController alloc] init];
    [self.mainTabBarController.view addSubview:self.loadingViewController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark -
#pragma mark - Custom methods
- (void)loadMainView
{
    GTFirstViewController *firstViewController = [[GTFirstViewController alloc] init];
    UINavigationController *oneNavigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    oneNavigationController.navigationBar.barStyle = UIBarStyleBlack;
    //oneNavigationController.navigationBar
    oneNavigationController.delegate = self;

    GTSecondViewController *secondViewController = [[GTSecondViewController alloc] init];
    UINavigationController *twoNavigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    twoNavigationController.navigationBar.barStyle = UIBarStyleBlack;
    twoNavigationController.delegate = self;
    
    GTThirdViewController *thirdViewController = [[GTThirdViewController alloc] init];
    UINavigationController *threeNavigationController = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
    threeNavigationController.navigationBar.barStyle = UIBarStyleBlack;
    threeNavigationController.delegate = self;
    
    GTFourthViewController *fourthViewController= [[GTFourthViewController alloc] init];
    UINavigationController *fourNavigationController = [[UINavigationController alloc] initWithRootViewController:fourthViewController];
    fourNavigationController.navigationBar.barStyle = UIBarStyleBlack;
    fourNavigationController.delegate = self;
    
    GTFifthViewController *fifthViewController = [[GTFifthViewController alloc] init];
    UINavigationController *fiveNavigationController = [[UINavigationController alloc] initWithRootViewController:fifthViewController];
    fiveNavigationController.navigationBar.barStyle = UIBarStyleBlack;
    //fiveNavigationController.tabBarItem.title = @"one";
    fiveNavigationController.tabBarItem.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"5" ofType:@"png"]];
    fiveNavigationController.delegate = self;
	NSArray *ctrlArr = [NSArray arrayWithObjects:oneNavigationController,twoNavigationController,thirdViewController,fourNavigationController,fiveNavigationController,nil];

    NSMutableDictionary *imgDic = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic setObject:[UIImage imageNamed:@"home@2x.png"] forKey:@"Default"];
	[imgDic setObject:[UIImage imageNamed:@"home@2x.png"] forKey:@"Highlighted"];
	[imgDic setObject:[UIImage imageNamed:@"home-on@2x.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic2 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic2 setObject:[UIImage imageNamed:@"topic@2x.png"] forKey:@"Default"];
	[imgDic2 setObject:[UIImage imageNamed:@"topic@2x.png"] forKey:@"Highlighted"];
	[imgDic2 setObject:[UIImage imageNamed:@"topic-on@2x.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic3 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic3 setObject:[UIImage imageNamed:@"search@2x.png"] forKey:@"Default"];
	[imgDic3 setObject:[UIImage imageNamed:@"search@2x.png"] forKey:@"Highlighted"];
	[imgDic3 setObject:[UIImage imageNamed:@"search-on@2x.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic4 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic4 setObject:[UIImage imageNamed:@"shoppping@2x.png"] forKey:@"Default"];
	[imgDic4 setObject:[UIImage imageNamed:@"shoppping@2x.png"] forKey:@"Highlighted"];
	[imgDic4 setObject:[UIImage imageNamed:@"shoppping-on@2x.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic5 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic5 setObject:[UIImage imageNamed:@"my@2x.png"] forKey:@"Default"];
	[imgDic5 setObject:[UIImage imageNamed:@"my@2x.png"] forKey:@"Highlighted"];
	[imgDic5 setObject:[UIImage imageNamed:@"my-on@2x.png"] forKey:@"Seleted"];
	NSArray *imgArr = [NSArray arrayWithObjects:imgDic,imgDic2,imgDic3,imgDic4,imgDic5,nil];
	
	self.mainTabBarController = [[GTTabBarController alloc] initWithViewControllers:ctrlArr imageArray:imgArr];
	[self.mainTabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"bottom-bg.png"]];
	[self.mainTabBarController setTabBarTransparent:YES];
    self.mainTabBarController.delegate = self;
    self.mainTabBarController.animateDriect = 0;
    
    self.window.rootViewController = self.mainTabBarController;
}

- (void)loadingViewAnimation {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(loadingViewAnimationDone)];
    [UIView setAnimationDuration:2];
    self.loadingViewController.bgImageView1.frame = CGRectMake(self.loadingViewController.bgImageView1.frame.origin.x-160, self.loadingViewController.bgImageView1.frame.origin.y, self.loadingViewController.bgImageView1.frame.size.width, self.loadingViewController.bgImageView1.frame.size.height);
    self.loadingViewController.bgImageView2.frame = CGRectMake(self.loadingViewController.bgImageView2.frame.origin.x+160, self.loadingViewController.bgImageView2.frame.origin.y, self.loadingViewController.bgImageView2.frame.size.width, self.loadingViewController.bgImageView2.frame.size.height);
    [UIView commitAnimations];
}

- (void)loadingViewAnimationDone
{
    [self.loadingViewController.view removeFromSuperview];
    self.loadingViewController.view.alpha = 0;
}

#pragma mark NavigationDelegate
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (viewController.hidesBottomBarWhenPushed)
    {
        [self.mainTabBarController hidesTabBar:YES animated:YES];
    }
    else
    {
        [self.mainTabBarController hidesTabBar:NO animated:YES];
    }
}

#pragma mark -
#pragma mark GTTabBarControllerDelegate
- (BOOL)tabBarController:(GTTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    return YES;
}

- (void)tabBarController:(GTTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
}

@end
