//
//  AppDelegate.h
//  Test
//
//  Created by jstm on 15/5/6.
//  Copyright (c) 2015年 dongyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BaiduMapAPI/BMapKit.h>//引入所有的头文件

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    BMKMapManager* _mapManager; 
}

@property (strong, nonatomic) UIWindow *window;


@end

