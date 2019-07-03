//
//  UIImageView+Tool.h
//  OneKeyBrother
//
//  Created by Bill on 28/4/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <SDWebImage/UIImageView+WebCache.h>
#import "ResourceUtilityClass.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Tool)
/**
 *加载产品图片
 **/
-(void)loadPruductImage:(NSString*)imageName;
/**
 *加载头像图片
 **/
-(void)loadHeaderImage:(NSString*)imageName;
/**
 *加载门店图片
 **/
-(void)loadStoreImage:(NSString*)imageName;
/**
 *加载二维码图片
 **/
-(void)loadCodeImage:(NSString*)imageName;
/**
 *加载商家入驻图片
 **/
-(void)loadMerchantsInImage:(NSString*)imageName;
@end

NS_ASSUME_NONNULL_END
