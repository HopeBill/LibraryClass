//
//  RequestAPIManager+Store.m
//  OneKeyBrother
//
//  Created by Bill on 10/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+Store.h"

@implementation RequestAPIManager (Store)
/**
 *获取采集足迹的参数
 **/
-(void)getSaveFootprintParameter:(NSDictionary*)dic{
    
    [self requestWithType:RequestAPITypePost Url:footprintSave_URL params:dic];
}
/**
 *店铺/门店列表
 **/
-(void)merchantStoreListParameter:(NSDictionary*)dic{
    
    [self requestWithType:RequestAPITypePost Url:merchantStoreList_URL params:dic];
}
/**
 *店铺/门店列表筛选
 **/
-(void)merchantStoreListScreeningParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantStoreListScreening_URL params:dic];
}
/**
 *店铺/门店搜索
 **/
-(void)merchantStoreListSearchParameter:(NSDictionary*)dic{
       [self requestWithType:RequestAPITypePost Url:merchantSearchStore_URL params:dic];
}
/**
 *店铺/店铺详情
 **/
-(void)merchantStoreDetailParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:merchantStoreDetail_URL params:dic];
}

/**
 *店铺/获取门店分类
 **/
-(void)merchantStoreCategoryParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantStoreCategory_URL params:dic];
}

/**
 *店铺/商品列表
 **/
-(void)merchantStoreGoodsLlistParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantStoreGoodsLlist_URL params:dic];
}
/**
 *店铺评论列表
 **/
-(void)storecommentsListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantStorecommentslist_URL params:dic];
}
/**
 *店铺/商品列表:多次请求
 **/
-(void)storeGoodsLlistMoreParameter:(NSArray*)arr{
 
    [self requesWithData:arr];
}
/**
 *优惠券/列表
 **/
-(void)couponStoreCouponListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:couponStoreCouponList_URL params:dic];
}

/**
 *优惠券/优惠活动
 **/
-(void)couponStoreCouponActivityParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:couponStoreCouponActivity_URL params:dic];
}
/**
 *优惠券/领取优惠
 **/
-(void)receiveCouponsParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypeJosn Url:couponGetCoupon_URL params:dic];
}

/**
 *店铺/关注店铺
 **/
-(void)merchantFollowStoreParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantFollowStore_URL params:dic];
}

/**
 *店铺/取消关注店铺
 **/
-(void)merchantUnsubscribeStoreParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantUnsubscribeStore_URL params:dic];
}
/**
 *店铺/分享店铺
 **/
-(void)merchantShareStoreParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantShareStore_URL params:dic];
}
/**
*店铺/店铺评分
**/
-(void)merchantScoreStoreParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:merchantScoreStore_URL params:dic];
}
@end
