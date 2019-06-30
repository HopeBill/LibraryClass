//
//  RequestAPIManager+storeInformation.h
//  OneKeyBrother
//
//  Created by Bill on 30/4/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (storeInformation)
/**
 *门店信息保存
 **/
-(void)saveStoreInformation:(NSDictionary*)dic;
/**
 *资质信息保存
 **/
-(void)saveQualificationInfoInformation:(NSDictionary*)dic;
/**
 *资质信息：证件类型
 **/
-(void)merchantListTradelicenseParameter:(NSDictionary*)dic;
/**
 *收款信息保存
 **/
-(void)saveReceivablesInfoInformation:(NSDictionary*)dic;
/**
 *门店详情回填
 **/
-(void)storeInformationFileInformationAPI:(NSDictionary*)dic;
/**
 *门店情况
 **/
-(void)storeInfoFileInformationAPI:(NSDictionary*)dic;
/**
 *门店未提交
 **/
-(void)merchantStoreInfoFileUnsubmittedParameter:(NSDictionary*)dic;
/**
 *门店提交申请
 **/
-(void)storeInfoSubmitInformationAPI:(NSDictionary*)dic;
/**
*门店基本资料
**/
-(void)storeBasicInformationAPI:(NSDictionary*)dic;
/**
 *资质信息
 **/
-(void)qualificationsInformationAPI:(NSDictionary*)dic;
/**
 *收款信息
 **/
-(void)receivablesInformationAPI:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
