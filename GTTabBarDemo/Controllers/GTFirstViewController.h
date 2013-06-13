//
//  GTFirstViewController.h
//  GTTabBarDemo
//
//  Created by GTL on 13-6-6.
//  Copyright (c) 2013年 phisung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonHeader.h"

@interface GTFirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UITableView *gtTableView;
}

@property (nonatomic, retain) NSArray *dataArray;

@end
