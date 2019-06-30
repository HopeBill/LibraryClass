
//
//  RequestAPIManager+storeInformation.m
//  OneKeyBrother
//
//  Created by Bill on 30/4/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+storeInformation.h"

@implementation RequestAPIManager (storeInformation)
#pragma mark===  门店信息保存
-(void)saveStoreInformation:(NSDictionary*)dic{
    
      [self requestWithType:RequestAPITypePost Url:saveStoreInformation_URL params:dic];
}
#pragma mark===  资质信息保存
-(void)saveQualificationInfoInformation:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:saveQualificationInformation_URL params:dic];
}
/**
 *资质信息：证件类型
 **/
-(void)merchantListTradelicenseParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantListTradelicense_URL params:dic];
}
#pragma mark===  收款信息保存
-(void)saveReceivablesInfoInformation:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:saveReceivablesInformation_URL params:dic];
}
/**
 *门店详情回填
 **/
-(void)storeInformationFileInformationAPI:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:storeInformationFileInformation_URL params:dic];
}
/**
 *门店情况
 **/
-(void)storeInfoFileInformationAPI:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:storeInfoFileInformation_URL params:dic];
}
/**
 *门店未提交
 **/
-(void)merchantStoreInfoFileUnsubmittedParameter:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantStoreInfoFileUnsubmitted_URL params:dic];
}


/**
 *门店提交申请
 **/
-(void)storeInfoSubmitInformationAPI:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:storeInfoSubmitInformation_URL params:dic];
}
/**
 *门店基本资料
 **/
-(void)storeBasicInformationAPI:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:storeBasicInformation_URL params:dic];
}
/**
 *资质信息
 **/
-(void)qualificationsInformationAPI:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:qualificationsInformation_URL params:dic];
}
/**
 *收款信息
 **/
-(void)receivablesInformationAPI:(NSDictionary*)dic{
      [self requestWithType:RequestAPITypePost Url:receivablesInformation_URL params:dic];
}
@end
