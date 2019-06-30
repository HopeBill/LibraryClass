//
//  RequestAPIManager+shoppingCar.h
//  OneKeyBrother
//
//  Created by Bill on 9/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//



NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (shoppingCar)
/**
 *添加商品到购物车
 **/
-(void)addTheGoodsToCarParameter:(NSDictionary*)dic;
/**
 *减少购物车里面的商品
 **/
-(void)subtractionTheGoodsToCarParameter:(NSDictionary*)dic;

/**
 *清空购物车
 **/
-(void)orderCarClearParameter:(NSDictionary*)dic;
/**
 *购物车详情
 **/
-(void)orderCarDetailParameter:(NSDictionary*)dic;

/**
 *删除购买成功商品
 **/
-(void)deleteBuySuccessGoodsParameter:(NSArray*)data;

@end

NS_ASSUME_NONNULL_END
