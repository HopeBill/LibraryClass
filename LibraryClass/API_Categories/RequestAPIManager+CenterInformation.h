//
//  RequestAPIManager+CenterInformation.h
//  OneKeyBrother
//
//  Created by Bill on 17/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (CenterInformation)
/**
 *我的/本区域关注
 **/
-(void)userConcernInTheRegionParameter:(NSDictionary*)dic;
/**
 *我的/其他区域关注
 **/
-(void)userOtherTheRegionParameter:(NSDictionary*)dic;
/**
 *我的/采集足迹
 **/
-(void)footprintSaveParameter:(NSDictionary*)dic;
/**
 *我的/足迹
 **/
-(void)footprintIndexParameter:(NSDictionary*)dic;
/**
 *我的/删除足迹
 **/
-(void)deletefootprintParameter:(NSDictionary*)dic;
/**
 *我的/评价/列表
 **/
-(void)userEvaluationListParameter:(NSDictionary*)dic;
/**
 *我的/卡券
 **/
-(void)userCardCouponListParameter:(NSDictionary*)dic;

/**
 *地址/列表
 **/
-(void)userAddressListParameter:(NSDictionary*)dic;
/**
 *地址/默认地址
 **/
-(void)userGetAddressDefaultParameter:(NSDictionary*)dic;

/**
 *地址添加
 **/
-(void)userAddAddressParameter:(NSDictionary*)dic;

/**
 *修改地址
 **/
-(void)userModifyAddressParameter:(NSDictionary*)dic;
/**
 *设为默认地址
 **/
-(void)userDefaultAddressParameter:(NSDictionary*)dic;
/**
 *删除地址
 **/
-(void)userDeleteAddressParameter:(NSDictionary*)dic;
/**
 *邀请推荐/列表
 **/
-(void)userInvitationListParameter:(NSDictionary*)dic;
/**
 *邀请推荐/绑定归属商户
 **/
-(void)userInvitationBindParameter:(NSDictionary*)dic;

/**
 *钱包/列表
 **/
-(void)userWalletListParameter:(NSDictionary*)dic;

/**
 *钱包/是否显示
 **/
-(void)userWalletisHideParameter:(NSDictionary*)dic;

/**
 *钱包/明细
 **/
-(void)userWalletisDetailParameter:(NSDictionary*)dic;
/**
 *钱包/转账用户搜索
 **/
-(void)walletisTransferSearchParameter:(NSDictionary*)dic;
/**
 *钱包/转账金额最大限制
 **/
-(void)walletTransferAmountLimitParameter:(NSDictionary*)dic;
/**
 *钱包/转账
 **/
-(void)userWalletisTransferParameter:(NSDictionary*)dic;
/**
 *银行卡列表
 **/
-(void)userBankCardListParameter:(NSDictionary*)dic;
/**
 *银行卡添加
 **/
-(void)userBankCardAddParameter:(NSDictionary*)dic;
/**
 *银行卡设置默认
 **/
-(void)userBankCardDefaultParameter:(NSDictionary*)dic;
/**
 *删除银行卡
 **/
-(void)userBankCardDeleteParameter:(NSDictionary*)dic;

/**
 *消息设置/列表
 **/
-(void)messageSettingsListParameter:(NSDictionary*)dic;
/**
 *消息设置/保存
 **/
-(void)messageSaveParameter:(NSDictionary*)dic;

/**
 *我的设置
 **/
-(void)userMySettingsParameter:(NSDictionary*)dic;
/**
 *支付密码/验证支付密码
 **/
-(void)userVerifyPaymentPasswordParameter:(NSDictionary*)dic;
/**
 *我的/修改或添加支付密码(验证码)
 **/
-(void)userChangePaymentPasswordParameter:(NSDictionary*)dic;
/**
 *修改支付密码(支付密码版)
 **/
-(void)userChangePaymentPpwParameter:(NSDictionary*)dic;
/**
 *手势密码/创建手势密码
 **/
-(void)userCreatGesturePasswordParameter:(NSDictionary*)dic;
/**
 *手势密码/验证手势密码
 **/
-(void)userVerifyGesturePasswordParameter:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
