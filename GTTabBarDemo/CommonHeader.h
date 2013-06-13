//
//  CommonHeader.h
//  CommonTaobao
//
//  Created by GTL on 12-12-10.
//  Copyright (c) 2012年 phisung. All rights reserved.
//

#ifndef CommonTaobao_CommonHeader_h
#define CommonTaobao_CommonHeader_h

#import <UIKit/UIKit.h>
//#import "CTBViewController.h"
//#import "FirstViewController.h"
//#import "SecondViewController.h"
//#import "ThirdViewController.h"
//#import "FourthViewController.h"
//#import "FifthViewController.h"
//#import "MobClick.h"
//#import "JRLog.h"
//#import "GTLWelcomViewController.h"
//#import "Product.h"
//#import "GTPageControl.h"
//#import "RefreshHeaderAndFooterView.h"
//#import "GTCommentView.h"
//#import "PersonalProfileView.h"
////#import <SDWebImage/UIImageView+WebCache.h>
////#import <SDWebImage/SDImageCache.h>
////#import <SDWebImage/UIButton+WebCache.h>
//#import "UIImageView+WebCache.h"
//#import "SDImageCache.h"
//#import "UIButton+WebCache.h"
//
//#import "GTUntil.h"
//#import "GTNetworkUnit.h"
//#import "ASIHTTPRequest.h"
//#import "JSON.h"
//
//#import<QuartzCore/QuartzCore.h>
//#import<CoreGraphics/CoreGraphics.h>
//
//// Camerra
//#import <MediaPlayer/MediaPlayer.h>
//#import <MobileCoreServices/UTCoreTypes.h>
//#import "GTImageUntil.h"
//
//#import "HomePageDownlaod.h"
//
//#import "FullScreenView.h"
//
//#import "WBEngine.h"
//#import "GTTencent.h"
//#import "TencentOAuth.h"
//#import "CTBAppDelegate.h"
//#import "MBProgressHUD.h"
//#import "GTDetailWebView.h"
//#import "GTaoBaoEngine.h"
//#import "RegexKitLite.h"
//
//#import "SearchResultView.h"
//#import "CTBTabbedView.h"
//#import "SMGProductView.h"

// 经过测试了
CG_INLINE CGRect
GTRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    CGRect rect;
    CGRect mainFrme = [[UIScreen mainScreen] applicationFrame];
    if (mainFrme.size.height == 1096.0/2) {
        // bottom align
        if (y >= 820/2) {
            y = y+88;
            rect.origin.x = x; rect.origin.y = y;
            rect.size.width = width; rect.size.height = height;
            return rect;
        }
        // 拉长
        else if (y + height > 819/2) {
            rect.size.height = height + 88;
            rect.origin.x = x; rect.origin.y = y;
            rect.size.width = width;
            return rect;
            
        }
        // 下移
        else if (y > 0 && y < 860/2) {
            y = y * 1136.0/960.0;
            rect.origin.x = x; rect.origin.y = y;
            rect.size.width = width; rect.size.height = height;
            return rect;
        }

    }
    rect.origin.x = x; rect.origin.y = y;
    rect.size.width = width; rect.size.height = height;
    return rect;
}

typedef enum {
    TabbedView,
    TBFirstView,
    TBSecondtView,
    TBThirdView,
    TBFourthView,
    TBFifthView,
    
    
}LoadWhichView;

#define kUPloadQQ @"qqweibo"
#define kUPloadSINA @"sinaweibo"
#define kUploadRenRen @"Renren"
#define kUPloadQQSpace @"QQSpace"

#define UIUserHadLoginNotification @"UIUserHadLoginNotification"
#define UIUserInfomationHadChangedNotification @"UserInfomationHadChangedNotification"

#define MainFrame = [[UIScreen mainScreen] applicationFrame];

#define safe_release(obj) if(obj != nil && obj !=NULL){ \
[obj release]; \
obj = nil;\
}

#endif

//当前设备的屏幕宽度
#define SCREEN_X   [[UIScreen mainScreen] bounds].origin.x

//当前设备的屏幕高度
#define SCREEN_Y   [[UIScreen mainScreen] bounds].origin.y

//当前设备的屏幕宽度
#define SCREEN_WIDTH   [[UIScreen mainScreen] bounds].size.width

//当前设备的屏幕高度
#define SCREEN_HEIGHT   [[UIScreen mainScreen] bounds].size.height

//iPad文章列表的宽度
#define ARTICLE_AREA_WIDTH_IPAD   568


//iKnow默认背景颜色
#define CELL_BACKGROUND  [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]

//导航条文字颜色
#define GUIDE_VIEW_COLOR [UIColor colorWithRed:48.0/255.0 green:48.0/255.0 blue:48.0/255.0 alpha:1.0]

//导航条文字颜色
#define NAVIGATION_TEXT_COLOR [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0]

//辅助文字颜色
#define LIGHT_TEXT_COLOR [UIColor colorWithRed:101.0/255.0 green:107.0/255.0 blue:101.0/255.0 alpha:1.0]

//蓝色字体颜色
#define BLUE_TEXT_COLOR [UIColor colorWithRed:39.0/255.0 green:117.0/255.0 blue:180.0/255.0 alpha:1.0]

//用户选中反馈颜色
#define SELECTED_BACKGROUND [UIColor colorWithRed:220.0/255.0 green:220.0/255.0 blue:220.0/255.0 alpha:1.0]

//用户选中反馈颜色
#define TAG_SELECTED_BACKGROUND [UIColor colorWithRed:100.0/255.0 green:100.0/255.0 blue:100.0/255.0 alpha:1.0]

//官方回复颜色
#define OFFICIAL_COLOR [UIColor colorWithRed:255.0/255.0 green:155.0/255.0 blue:57.0/255.0 alpha:1.0]

//小文字蓝色
#define BLUE_CUSTOM_COLOR [UIColor colorWithRed:54.0/255 green:155.0/255.0 blue:208.0/255 alpha:1.0]
//灰色
#define GRAY_CUSTOM_COLOR [UIColor colorWithRed:139.0/255 green:139.0/255.0 blue:139.0/255 alpha:1.0]

#define NAV_BAR_ITEM_COLOR [UIColor darkGrayColor]

//STYLE
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]


#define ZBSTYLE_font ([UIFont systemFontOfSize:14])
#define ZBSTYLE_font_smaller ([UIFont systemFontOfSize:12])
#define ZBSTYLE_tableFont ([UIFont boldSystemFontOfSize:17])
#define ZBSTYLE_highlightedTextColor ([UIColor whiteColor])
#define ZBSTYLE_tableSubTextColor (RGBCOLOR(79, 89, 105))
#define ZBSTYLE_textColor ([UIColor blackColor])

#define English_font_des ([UIFont fontWithName:@"Georgia" size:15])
#define English_font_title ([UIFont fontWithName:@"Georgia-Bold" size:17])
#define English_font_body ([UIFont fontWithName:@"Georgia" size:15])

#define English_font_des_iPad ([UIFont fontWithName:@"Georgia" size:17])
#define English_font_title_iPad ([UIFont fontWithName:@"Georgia-Bold" size:19])
#define English_font_body_iPad ([UIFont fontWithName:@"Georgia" size:17])

#define kTableCellSmallMargin   6.0f
#define kTableCellSpacing       8.0f
#define kTableCellMargin        10.0f
#define kTableCellHPadding      10.0f
#define kTableCellVPadding      10.0f

//字符串
#define SAFE_STRING(str) ([(str) length] ? (str) : @"")
#define RELEASE_SAFELY(__POINTER) { [__POINTER release]; __POINTER = nil; }

#define HomePageDownloaded @"HomePageDownloaded"

#define ENABLE_SDWEBIMAGE_DECODER
