//
//  RequestAPIManager+Message.m
//  OneKeyBrother
//
//  Created by Bill on 13/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+Message.h"

@implementation RequestAPIManager (Message)

/**
 *通知消息、来探店消息
 **/
-(void)noticeremindFindshopremindParameter:(NSArray*)arr{
    
    [self requesWithData:arr];
}
/**
 *获取通知消息列表
 **/
-(void)noticeremindListAction:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:messagenoticelist_URL params:dic];
}
/**
 *消息/来探店/Banner
 **/
-(void)messageFindshopBannerParameter:(NSDictionary*)dic{
    
     [self requestWithType:RequestAPITypePost Url:messageFindshopBanner_URL params:dic];
}
/**
 *消息/来探店/关注
 **/
-(void)messageFindshopFocusOnListParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:messageFindshopList_URL params:dic];
}
/**
 *消息/来探店/推荐列表
 **/
-(void)messageFindshopRecommendedListParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:messagefindunconsernedshoplistt_URL params:dic];
}
/**
 *来探店点赞
 **/
-(void)findShopGiveLikeParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:messagefindShopGiveLike_URL params:dic];
}
/**
 *来探店取消点赞
 **/
-(void)findShopCancelGiveLikeParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:messagefindShopCancelGiveLike_URL params:dic];
}
/**
 *来探店领取
 **/
-(void)findShopReceiveParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypeJosn Url:messageindShopReceive_URL params:dic];
}
/**
 *来探店分享
 **/
-(void)findShopShareParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:messagefindShopShare_URL params:dic];
}

@end
