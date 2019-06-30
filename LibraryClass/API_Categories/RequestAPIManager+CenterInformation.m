
//
//  RequestAPIManager+CenterInformation.m
//  OneKeyBrother
//
//  Created by Bill on 17/5/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+CenterInformation.h"

@implementation RequestAPIManager (CenterInformation)
/**
 *我的/本区域关注
 **/
-(void)userConcernInTheRegionParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:concernInTheRegion_URL params:dic];
}
/**
 *我的/其他区域关注
 **/
-(void)userOtherTheRegionParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:OtherTheRegion_URL params:dic];
}
/**
 *我的/采集足迹
 **/
-(void)footprintSaveParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:footprintSave_URL params:dic];
}
/**
 *我的/足迹
 **/
-(void)footprintIndexParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:footprintIndex_URL params:dic];
}
/**
 *我的/删除足迹
 **/
-(void)deletefootprintParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:deleteFootprintIndex_URL params:dic];
}
/**
 *我的/评价/列表
 **/
-(void)userEvaluationListParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:EvaluationListr_URL params:dic];
}
/**
 *我的/卡券
 **/
-(void)userCardCouponListParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:userCardCouponList_URL params:dic];
}
/**
 *地址/列表
 **/
-(void)userAddressListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userAddressList_URL params:dic];
}
/**
 *地址/默认地址
 **/
-(void)userGetAddressDefaultParameter:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:userGetAddressDefault_URL params:dic];
}

/**
 *地址添加
 **/
-(void)userAddAddressParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userAddAddress_URL params:dic];
}

/**
 *修改地址
 **/
-(void)userModifyAddressParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userModifyAddress_URL params:dic];
}
/**
 *设为默认地址
 **/
-(void)userDefaultAddressParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userDefaultAddress_URL params:dic];
}
/**
 *删除地址
 **/
-(void)userDeleteAddressParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userDeleteAddress_URL params:dic];
}
/**
 *邀请推荐/列表
 **/
-(void)userInvitationListParameter:(NSDictionary*)dic{
    
    [self requestWithType:RequestAPITypePost Url:userInvitationList_URL params:dic];
}
/**
 *邀请推荐/绑定归属商户
 **/
-(void)userInvitationBindParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userInvitationBind_URL params:dic];
}
/**
 *钱包/列表
 **/
-(void)userWalletListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userWalletList_URL params:dic];
}

/**
 *钱包/是否显示
 **/
-(void)userWalletisHideParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userWalletisHide_URL params:dic];
}

/**
 *钱包/明细
 **/
-(void)userWalletisDetailParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userWalletisDetail_URL params:dic];
}
/**
 *钱包/转账用户搜索
 **/
-(void)walletisTransferSearchParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:walletisTransferSearch_URL params:dic];
}
/**
 *钱包/转账金额最大限制
 **/
-(void)walletTransferAmountLimitParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:walletTransferAmountLimit_URL params:dic];
}
/**
 *钱包/转账
 **/
-(void)userWalletisTransferParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userWalletisTransfer_URL params:dic];
}
/**
 *银行卡列表
 **/
-(void)userBankCardListParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userBankCardList_URL params:dic];
}
/**
 *银行卡添加
 **/
-(void)userBankCardAddParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userBankCardAdd_URL params:dic];
}
/**
 *银行卡设置默认
 **/
-(void)userBankCardDefaultParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userBankCardDefault_URL params:dic];
}
/**
 *删除银行卡
 **/
-(void)userBankCardDeleteParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userBankCardDelete_URL params:dic];
}
/**
 *消息设置/列表
 **/
-(void)messageSettingsListParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:messageSettingsList_URL params:dic];
}
/**
 *消息设置/保存
 **/
-(void)messageSaveParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:messageSave_URL params:dic];
}

/**
 *我的设置
 **/
-(void)userMySettingsParameter:(NSDictionary*)dic{
  [self requestWithType:RequestAPITypePost Url:userMySettings_URL params:dic];
}
/**
 *支付密码/验证支付密码
 **/
-(void)userVerifyPaymentPasswordParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:userVerifyPaymentPassword_URL params:dic];
}
/**
 *我的/修改或添加支付密码(验证码)
 **/
-(void)userChangePaymentPasswordParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:userChangePaymentPassword_URL params:dic];
}
/**
 *修改支付密码(支付密码版)
 **/
-(void)userChangePaymentPpwParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:userChangePaymentPpw_URL params:dic];
}
/**
 *手势密码/创建手势密码
 **/
-(void)userCreatGesturePasswordParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:userCreatGesturePassword_URL params:dic];
}
/**
 *手势密码/验证手势密码
 **/
-(void)userVerifyGesturePasswordParameter:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:userVerifyGesturePassword_URL params:dic];
}

@end
