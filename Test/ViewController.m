//
//  ViewController.m
//  Test
//
//  Created by jstm on 15/5/6.
//  Copyright (c) 2015年 dongyf. All rights reserved.
//

#import "ViewController.h"
#import "CaptcureScreenViewController.h"

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
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 40)];
    label.text = @"captcure me";
    label.textColor = [UIColor blueColor];
    [self.view addSubview:label];
    
    mapView = [[BMKMapView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    [mapView setTrafficEnabled:YES];
    self.view = mapView;

}

- (void)viewWillAppear:(BOOL)animated
{
    [mapView viewWillAppear];
    mapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}
- (void)viewWillDisappear:(BOOL)animated
{
    [mapView viewWillDisappear];
    mapView.delegate = nil; // 不用时，置nil
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)captcureScreen:(id)sender {
    
    CaptcureScreenViewController *captcure = [[CaptcureScreenViewController alloc] init];
    
    [captcure saveScreenshotToPhotosAlbum:self.view];
}
@end
