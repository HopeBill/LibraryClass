//
//  RequestAPIManager+OrderInformation.h
//  OneKeyBrother
//
//  Created by Bill on 14/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (OrderInformation)

/**
 *订单/列表
 **/
-(void)orderListParameter:(NSDictionary*)dic;

/**
*订单/获取消费码
**/
-(void)orderGetcodeParameter:(NSDictionary*)dic;
/**
 *订单/在店买单门店信息
 **/
-(void)orderPayinshopdiscountParameter:(NSDictionary*)dic;

/**
 *订单/上门|外卖订单详情
 **/
-(void)orderTakeoutdetailParameter:(NSDictionary*)dic;
/**
 *订单/到店自取订单详情
 **/
-(void)orderShopdetailParameter:(NSDictionary*)dic;
/**
 *订单/取消订单
 **/
-(void)orderCancelParameter:(NSDictionary*)dic;

/**
 *订单/退款
 **/
-(void)orderRefundParameter:(NSDictionary*)dic;

/**
 *订单/评价
 **/
-(void)orderAppraiseParameter:(NSDictionary*)dic;
/**
 *订单/订单状态追踪
 **/
-(void)orderTraceParameter:(NSDictionary*)dic;
/**
 *订单/订单详情
 **/
-(void)orderDetailParameter:(NSDictionary*)dic;

/**
 *订单/提交订单
 **/
-(void)orderSubmitParameter:(NSDictionary*)dic;
/**
 *订单/获取订单支付信息
 **/
-(void)orderPayorderdetailParameter:(NSDictionary*)dic;
/**
 *订单/支付
 **/
-(void)orderPayParameter:(NSDictionary*)dic;

/**
 *订单/再来一单
 **/
-(void)againOrderParameter:(NSDictionary*)dic;

@end

NS_ASSUME_NONNULL_END
