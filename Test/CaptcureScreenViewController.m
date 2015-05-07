//
//  CaptcureScreenViewController.m
//  Test
//
//  Created by jstm on 15/5/7.
//  Copyright (c) 2015年 dongyf. All rights reserved.
//

#import "CaptcureScreenViewController.h"

@interface CaptcureScreenViewController ()

@end

@implementation CaptcureScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (UIImage *)snapshotScreenWithGL:(UIView *) view
{
    CGSize size = view.bounds.size;
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    
    CGRect rec = CGRectMake(view.frame.origin.x, view.frame.origin.y, view.bounds.size.width, view.bounds.size.height);
    [self.view drawViewHierarchyInRect:rec afterScreenUpdates:YES];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSData * data = UIImagePNGRepresentation(image);
    
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *filename = [[path objectAtIndex:0] stringByAppendingPathComponent:@"foo.png"];
    [data writeToFile:filename atomically:YES];
    
    return image;
}

- (void)saveScreenshotToPhotosAlbum:(UIView *)view
{
    UIImageWriteToSavedPhotosAlbum([self getScreen:view], nil, nil, nil);
}

- (UIImage *) getScreen:(UIView *) view
{
    UIImage* layerImage = nil;
    CGSize layerSize = view.frame.size;
    
    UIGraphicsBeginImageContextWithOptions(layerSize, NO, 2.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    layerImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return layerImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
