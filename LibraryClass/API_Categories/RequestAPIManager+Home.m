//
//  RequestAPIManager+Home.m
//  OneKeyBrother
//
//  Created by Bill on 7/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+Home.h"

@implementation RequestAPIManager (Home)
/**
 *嘿！附近/商品列表
 **/
-(void)merchantNearGoodsLlistParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantNearGoodsLlist_URL params:dic];
}
/**
 *门店banner
 **/
-(void)activityRecommendStoreListParameter:(NSDictionary*)dic{
    
     [self requestWithType:RequestAPITypeJosn Url:activityRecommendStoreList_URL params:dic];
}
/**
 *获取推荐门店列表、头条列表、经营分类
 **/
-(void)homeGoodsLlisWithactivityRecommendParameter:(NSArray *)arr{
    [self requesWithData:arr];
}
/**
 *首页/最近搜索
 **/
-(void)homeMerchantLatelySearchParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantLatelySearch_URL params:dic];
}
/**
 *首页/热门搜索
 **/
-(void)homeMerchantHotStoreSearchParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantHotStore_URL params:dic];
}
/**
 *首页/搜索
 **/
-(void)homeMerchantSearchStoreParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantSearchStore_URL params:dic];
}
/**
 *拼单/拼单列表
 **/
-(void)activityRigupOrderListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:activityRigupOrderList_URL params:dic];
}
/**
 *拼单/拼单详情
 **/
-(void)merchantRigupOrderDetailtParameter:(NSDictionary*)dic{
    
    [self requestWithType:RequestAPITypePost Url:merchantRigupOrderDetail_URL params:dic];
}
/**
 *拼单参与者消息轮播
 **/
-(void)activityRigupOrderMessageParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:activityRigupOrderMessage_URL params:dic];
}
/**
 *获取拼单详情、参与者消息轮播
 **/
-(void)spellListDetailsMessageParameter:(NSArray*)arr{
    
    [self requesWithData:arr];
}
/**
 *列出有拼单商品的经营类目
 **/
-(void)merchantListRigupCategoryParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:merchantListRigupCategory_URL params:dic];
}
/**
 *店铺/拼单
 **/
-(void)activityStorerigUpOrderParameter:(NSDictionary*)dic{
    
     [self requestWithType:RequestAPITypePost Url:activityStorerigUpOrder_URL params:dic];
}
/**
 *赚客/分类
 **/
-(void)makeGuestClassificationAction:(NSDictionary*)dic{
    
      [self requestWithType:RequestAPITypePost Url:makeClassification_URL params:dic];
}
/**
 *赚客/列表
 **/
-(void)makeCustomersListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypeJosn Url:makeCustomersList_URL params:dic];
}
/**
 *赚客/分享赚
 **/
-(void)makeCustomersShareParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:makeCustomersShare_URL params:dic];
}
/**
 *赚客/赚客详情
 **/
-(void)makeCustomersDetailParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:makeCustomersDetail_URL params:dic];
}
/**
 *壹键哥头条/列表
 **/
-(void)messageArticleListParameter:(NSDictionary*)dic{
    
    [self requestWithType:RequestAPITypePost Url:messageArticleList_URL params:dic];
}
/**
 *壹键哥头条/内容
 **/
-(void)messageArticleDetailParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:messageArticleDetail_URL params:dic];
}
/**
 *分类/列表
 **/
-(void)sellCategoryListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantSellCategorySearchForTree_URL params:dic];
}
/**
 *分类/搜索
 **/
-(void)sellCategorySearchParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:sellCategorySearch_URL params:dic];
    
}
/**
 *城市内地址的实时模糊检索
 **/
-(void)merchantSerarchShopParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userMerchantSerarchShop_URL params:dic];
}
/**
 *获取所有城市信息
 **/
-(void)merchantGetCityListOrderByParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:merchantGetCityListOrderBy_URL params:dic];
}
@end
