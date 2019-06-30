//
//  RequestAPIManager+Details.m
//  OneKeyBrother
//
//  Created by Bill on 9/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+Details.h"

@implementation RequestAPIManager (Details)
/**
 *店铺/商品详情
 **/
-(void)merchantStoreGoodsDetailParameter:(NSDictionary*)dic{
       [self requestWithType:RequestAPITypePost Url:userStoreGoodsDetail_URL params:dic];
}
/**
 *商品评论/评论列表
 **/
-(void)goodsCommentLlistParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:goodsCommentLlist_URL params:dic];
}
/**
 *店铺/分享商品
 **/
-(void)merchantShareGoodsParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:merchantShareGoods_URL params:dic];
}
/**
  *同时获取购物车、评论列表
  **/
-(void)carShopCommenerParametr:(NSArray*)arr{
    [self requesWithData:arr];
}
@end
