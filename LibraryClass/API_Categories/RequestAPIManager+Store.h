//
//  RequestAPIManager+Store.h
//  OneKeyBrother
//
//  Created by Bill on 10/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (Store)
/**
 *获取采集足迹的参数
 **/
-(void)getSaveFootprintParameter:(NSDictionary*)dic;
/**
 *店铺/门店列表
 **/
-(void)merchantStoreListParameter:(NSDictionary*)dic;
/**
 *店铺/门店列表筛选
 **/
-(void)merchantStoreListScreeningParameter:(NSDictionary*)dic;
/**
 *店铺/门店搜索
 **/
-(void)merchantStoreListSearchParameter:(NSDictionary*)dic;

/**
 *店铺/店铺详情
 **/
-(void)merchantStoreDetailParameter:(NSDictionary*)dic;

/**
 *店铺/获取门店分类
 **/
-(void)merchantStoreCategoryParameter:(NSDictionary*)dic;

/**
 *店铺/商品列表
 **/
-(void)merchantStoreGoodsLlistParameter:(NSDictionary*)dic;
/**
 *店铺评论列表
 **/
-(void)storecommentsListParameter:(NSDictionary*)dic;

/**
 *店铺/商品列表:多次请求
 **/
-(void)storeGoodsLlistMoreParameter:(NSArray*)arr;

/**
 *优惠券/列表
 **/
-(void)couponStoreCouponListParameter:(NSDictionary*)dic;

/**
 *优惠券/优惠活动
 **/
-(void)couponStoreCouponActivityParameter:(NSDictionary*)dic;
/**
 *优惠券/领取优惠
 **/
-(void)receiveCouponsParameter:(NSDictionary*)dic;
/**
 *店铺/关注店铺
 **/
-(void)merchantFollowStoreParameter:(NSDictionary*)dic;

/**
 *店铺/取消关注店铺
 **/
-(void)merchantUnsubscribeStoreParameter:(NSDictionary*)dic;
/**
 *店铺/分享店铺
 **/
-(void)merchantShareStoreParameter:(NSDictionary*)dic;
/**
 *店铺/店铺评分
 **/
-(void)merchantScoreStoreParameter:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
