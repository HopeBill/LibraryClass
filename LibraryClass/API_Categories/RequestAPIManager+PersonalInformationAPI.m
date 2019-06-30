//
//  RequestAPIManager+LoginAPI.m
//  OneKeyBrother
//
//  Created by Bill on 9/4/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager+PersonalInformationAPI.h"

@implementation RequestAPIManager (PersonalInformationAPI)

//获取验证码
-(void)getVerificationCodeParames:(NSDictionary*)dic{
 
    [self requestWithType:RequestAPITypePost Url:Codegetcode_user_URL params:dic];
}
/**
 *获取验证码
 **/
-(void)getGraphicVerificationCodeParames:(NSDictionary*)dic{
    
    [self requestWithType:RequestAPITypePost Url:GraphicCodegetcode_user_URL params:dic];
}
/**
 *验证码是否正确
 **/
-(void)verificationCodeCorrectParames:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:userCodeisCode_URL params:dic];
}
//判断手机号码是否存在
-(void)myisCallPhoneParames:(NSDictionary*)dic{
 [self requestWithType:RequestAPITypePost Url:MyisCallPhone_URL params:dic];
}

//登录
-(void)logoinParames:(NSDictionary*)dic{
    
    [self requestWithType:RequestAPITypePost Url:Login_URL params:dic];
}
//GW登录
-(void)GWlogoinParames:(NSDictionary*)dic{
   [self requestWithType:RequestAPITypePost Url:GWLogin_URL params:dic];
}
//记录推荐人
-(void)recordReferrerParames:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:recordReferrer_URL params:dic];
}
//修改登录密码
-(void)modifyLoginPasswordParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:ModifyLoginPassword_URL params:dic];
    
}

#pragma mark===  获取我的个人信息
-(void)getMyDetailsParames:(NSDictionary*)dic{
    [self  requestWithType:RequestAPITypePost Url:MyDetail_URL params:dic];
}
#pragma mark=== 获取我的个人资料
-(void)getMyProfileParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:MyProfile_URL params:dic];
}
#pragma mark=== 获取我的w二维码
-(void)getmyQrCodeParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:MyQrCode_URL params:dic];
}

#pragma mark===  修改我的个人资料
-(void)modifyMyProfileParames:(NSDictionary*)dic{
    
     [self requestWithType:RequestAPITypePost Url:modifyMyProfile_URL params:dic];
}
#pragma mark===  修改我的个人资料
-(void)modifyNewPhoneParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userUserChangePhone_URL params:dic];
}


#pragma mark===  上传用户头像
-(void)updateImageActionParames:(NSDictionary *)dic{
     [self requestWithType:RequestAPITypePost Url:updateImage_URL params:dic];
}
/**
 *上传图片
 **/
-(void)uploadPictureParames:(NSArray*)photoArr{
     [self updateImageURL:updatePicture_URL withPhotoAsset:photoArr];
}
/**
 *获取省
 **/
-(void)userListProvinceNameParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userListProvinceName_URL params:dic];
}
/**
 *获取市
 **/
-(void)userListCityNameParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userListCityName_URL params:dic];
}
/**
 *获取县
 **/
-(void)userListDistrictNameParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userListDistrictName_URL params:dic];
}
/**
 *获取省市区3级
 **/
-(void)userMerchantListAreaParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:userMerchantListArea_URL params:dic];
}
/**
 *获取经营类目
 **/
-(void)sellCategorySearchForTreeParames:(NSDictionary*)dic{
     [self requestWithType:RequestAPITypePost Url:merchantSellCategorySearchForTree_URL params:dic];
}
/**
 *定位/搜索城市
 **/
-(void)merchantSearchCityByNameOPinYinParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantSellCategorySearchForTree_URL params:dic];
}
/**
 *获取当前定位城市信息(通过name）
 **/
-(void)merchantGetIndexCityParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantGetIndexCity_URL params:dic];
}
/**
 *按字母获取所有城市信息
 **/
-(void)merchantGetCityListOrderByParames:(NSDictionary*)dic{
    [self requestWithType:RequestAPITypePost Url:merchantGetCityListOrderBy_URL params:dic];
}
@end
