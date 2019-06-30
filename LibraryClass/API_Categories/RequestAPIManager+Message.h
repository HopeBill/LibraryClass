//
//  RequestAPIManager+Message.h
//  OneKeyBrother
//
//  Created by Bill on 13/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (Message)
/**
 *通知消息、来探店消息
 **/
-(void)noticeremindFindshopremindParameter:(NSArray*)arr;
/**
 *获取通知消息列表
 **/
-(void)noticeremindListAction:(NSDictionary*)dic;
/**
 *消息/来探店/Banner
 **/
-(void)messageFindshopBannerParameter:(NSDictionary*)dic;
/**
 *消息/来探店/关注
 **/
-(void)messageFindshopFocusOnListParameter:(NSDictionary*)dic;
/**
 *消息/来探店/推荐列表
 **/
-(void)messageFindshopRecommendedListParameter:(NSDictionary*)dic;
/**
 *来探店点赞
 **/
-(void)findShopGiveLikeParameter:(NSDictionary*)dic;
/**
 *来探店取消点赞
 **/
-(void)findShopCancelGiveLikeParameter:(NSDictionary*)dic;
/**
 *来探店领取
 **/
-(void)findShopReceiveParameter:(NSDictionary*)dic;
/**
 *来探店分享
 **/
-(void)findShopShareParameter:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
