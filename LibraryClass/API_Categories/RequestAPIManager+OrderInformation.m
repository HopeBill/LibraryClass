//
//  RequestAPIManager+OrderInformation.m
//  OneKeyBrother
//
//  Created by Bill on 14/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+OrderInformation.h"

@implementation RequestAPIManager (OrderInformation)
/**
 *订单/列表
 **/
-(void)orderListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderList_URL params:dic];
}

/**
 *订单/获取消费码
 **/
-(void)orderGetcodeParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:orderGetcode_URL params:dic];
    
}
/**
 *订单/在店买单门店信息
 **/
-(void)orderPayinshopdiscountParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderPayinshopdiscount_URL params:dic];
}

/**
 *订单/上门|外卖订单详情
 **/
-(void)orderTakeoutdetailParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderTakeoutdetail_URL params:dic];
}
/**
 *订单/到店自取订单详情
 **/
-(void)orderShopdetailParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderShopdetail_URL params:dic];
}
/**
 *订单/取消订单
 **/
-(void)orderCancelParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderCancel_URL params:dic];
}

/**
 *订单/退款
 **/
-(void)orderRefundParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderRefund_URL params:dic];
}

/**
 *订单/评价
 **/
-(void)orderAppraiseParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderAppraise_URL params:dic];
}
/**
 *订单/订单状态追踪
 **/
-(void)orderTraceParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderTrace_URL params:dic];
}
/**
 *订单/订单详情
 **/
-(void)orderDetailParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:oorderDetail_URL params:dic];
}
/**
 *订单/提交订单
 **/
-(void)orderSubmitParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderSubmit_URL params:dic];
}
/**
 *订单/获取订单支付信息
 **/
-(void)orderPayorderdetailParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderPayorderdetail_URL params:dic];
}
/**
 *订单/支付
 **/
-(void)orderPayParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:orderPay_URL params:dic];
}
/**
 *订单/再来一单
 **/
-(void)againOrderParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:againOrder_URL params:dic];
}
@end
