//
//  CaptcureScreenViewController.h
//  Test
//
//  Created by jstm on 15/5/7.
//  Copyright (c) 2015年 dongyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CaptcureScreenViewController : UIViewController
/**
 *  截屏 但是保存的图片为全白
 *
 *  @param view 要保存的view
 *
 *  @return 保存的截屏图片
 */
- (UIImage *)snapshotScreenWithGL:(UIView *) view;
/**
 *  截屏 可以正常保存屏幕
 *
 *  @param view 要保存的view
 *
 *  @return 保存的截屏图片
 */
- (UIImage *) getScreen:(UIView *) view;
/**
 *  保存view到相册
 *
 *  @param view 要保存的view
 */
- (void)saveScreenshotToPhotosAlbum:(UIView *)view;
@end
