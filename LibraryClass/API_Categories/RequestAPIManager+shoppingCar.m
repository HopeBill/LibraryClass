
//
//  RequestAPIManager+shoppingCar.m
//  OneKeyBrother
//
//  Created by Bill on 9/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+shoppingCar.h"

@implementation RequestAPIManager (shoppingCar)
/**
 *添加商品到购物车
 **/
-(void)addTheGoodsToCarParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderCarAdd_URL params:dic];
    
}

/**
 *减掉购物车里面的商品
 **/
-(void)subtractionTheGoodsToCarParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:orderCarRemove_URL params:dic];
}
/**
 *清空购物车
 **/
-(void)orderCarClearParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:orderCarClear_URL params:dic];
}
/**
 *购物车详情
 **/
-(void)orderCarDetailParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:orderCarDetail_URL params:dic];
}

/**
 *删除购买成功商品
 **/
-(void)deleteBuySuccessGoodsParameter:(NSArray*)data{
    
    [self requesWithData:data];
}
@end
