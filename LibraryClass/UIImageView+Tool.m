//
//  UIImageView+Tool.m
//  OneKeyBrother
//
//  Created by Bill on 28/4/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "UIImageView+Tool.h"

@implementation UIImageView (Tool)
-(void)loadPruductImage:(NSString *)imageName{
      [self sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:@"WechatIMG238.png"] completed:nil];
}
/**
 *加载门店图片
 **/
-(void)loadStoreImage:(NSString*)imageName{
      [self sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:@"storelogo"] completed:nil];
}

-(void)loadHeaderImage:(NSString *)imageName{
    
    [self sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:@"morentouxiang"] completed:nil];
}
-(void)loadCodeImage:(NSString *)imageName{
    [self sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:@"icon_erweima_gray"] completed:nil];
}
/**
 *加载商家入驻图片
 **/
-(void)loadMerchantsInImage:(NSString*)imageName{
     [self sd_setImageWithURL:[NSURL URLWithString:imageName] placeholderImage:[UIImage imageNamed:@""] completed:nil];
}
@end
