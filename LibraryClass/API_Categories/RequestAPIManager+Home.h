//
//  RequestAPIManager+Home.h
//  OneKeyBrother
//
//  Created by Bill on 7/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//



NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (Home)
/**
 *嘿！附近/商品列表
 **/
-(void)merchantNearGoodsLlistParameter:(NSDictionary*)dic;
/**
 *门店banner
 **/
-(void)activityRecommendStoreListParameter:(NSDictionary*)dic;
/**
 *获取推荐门店列表、头条列表、经营分类
 **/
-(void)homeGoodsLlisWithactivityRecommendParameter:(NSArray*)arr;

/**
 *首页/最近搜索
 **/
-(void)homeMerchantLatelySearchParameter:(NSDictionary*)dic;
/**
 *首页/热门搜索
 **/
-(void)homeMerchantHotStoreSearchParameter:(NSDictionary*)dic;
/**
 *首页/搜索
 **/
-(void)homeMerchantSearchStoreParameter:(NSDictionary*)dic;

/**
 *拼单/拼单列表
 **/
-(void)activityRigupOrderListParameter:(NSDictionary*)dic;

/**
 *拼单/拼单详情
 **/
-(void)merchantRigupOrderDetailtParameter:(NSDictionary*)dic;

/**
 *拼单参与者消息轮播
 **/
-(void)activityRigupOrderMessageParameter:(NSDictionary*)dic;
/**
 *获取拼单详情、参与者消息轮播
 **/
-(void)spellListDetailsMessageParameter:(NSArray*)arr;
/**
 *列出有拼单商品的经营类目
 **/
-(void)merchantListRigupCategoryParameter:(NSDictionary*)dic;

/**
 *店铺/拼单
 **/
-(void)activityStorerigUpOrderParameter:(NSDictionary*)dic;
/**
 *赚客/分类
 **/
-(void)makeGuestClassificationAction:(NSDictionary*)dic;
/**
 *赚客/列表
 **/
-(void)makeCustomersListParameter:(NSDictionary*)dic;
/**
 *赚客/分享赚
 **/
-(void)makeCustomersShareParameter:(NSDictionary*)dic;
/**
 *赚客/赚客详情
 **/
-(void)makeCustomersDetailParameter:(NSDictionary*)dic;
/**
 *壹键哥头条/列表
 **/
-(void)messageArticleListParameter:(NSDictionary*)dic;
/**
 *壹键哥头条/内容
 **/
-(void)messageArticleDetailParameter:(NSDictionary*)dic;
/**
 *分类/列表
 **/
-(void)sellCategoryListParameter:(NSDictionary*)dic;
/**
 *分类/搜索
 **/
-(void)sellCategorySearchParameter:(NSDictionary*)dic;

/**
 *进行城市内地址的实时模糊检索
 **/
-(void)merchantSerarchShopParameter:(NSDictionary*)dic;
/**
 *获取所有城市信息
 **/
-(void)merchantGetCityListOrderByParameter:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
