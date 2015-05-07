//
//  ViewController.m
//  Test
//
//  Created by jstm on 15/5/6.
//  Copyright (c) 2015年 dongyf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 保存文字到系统剪贴板
    
    [UIPasteboard generalPasteboard].string = @"测试文字";
    
    // 读取剪贴板中的文字
    
    NSLog(@"剪贴板中的文字：%@", [UIPasteboard generalPasteboard].string);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
