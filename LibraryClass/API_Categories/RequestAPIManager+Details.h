//
//  RequestAPIManager+Details.h
//  OneKeyBrother
//
//  Created by Bill on 9/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (Details)
/**
 *店铺/商品详情
 **/
-(void)merchantStoreGoodsDetailParameter:(NSDictionary*)dic;
/**
 *商品评论/评论列表
 **/
-(void)goodsCommentLlistParameter:(NSDictionary*)dic;
/**
 *店铺/分享商品
 **/
-(void)merchantShareGoodsParameter:(NSDictionary*)dic;

/**
 *同时获取购物车、评论列表
 **/
-(void)carShopCommenerParametr:(NSArray*)arr;
@end

NS_ASSUME_NONNULL_END
