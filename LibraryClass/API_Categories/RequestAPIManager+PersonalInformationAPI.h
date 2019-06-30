//
//  RequestAPIManager+LoginAPI.h
//  OneKeyBrother
//
//  Created by Bill on 9/4/2019.
//  Copyright © 2019 Bill. All rights reserved.
//

#import "RequestAPIManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface RequestAPIManager (PersonalInformationAPI)
/**
 *获取验证码
 **/
-(void)getVerificationCodeParames:(NSDictionary*)dic;
/**
 *获取验证码
 **/
-(void)getGraphicVerificationCodeParames:(NSDictionary*)dic;
/**
 *验证码是否正确
 **/
-(void)verificationCodeCorrectParames:(NSDictionary*)dic;
/**
 *判断手机号码是否存在
 **/
-(void)myisCallPhoneParames:(NSDictionary*)dic;

/**
 *手机登录
 **/
-(void)logoinParames:(NSDictionary*)dic;
/**
 *GW登录
 **/
-(void)GWlogoinParames:(NSDictionary*)dic;
/**
 *记录推荐人
 **/
-(void)recordReferrerParames:(NSDictionary*)dic;

/**
 *修改登录密码
 **/
-(void)modifyLoginPasswordParames:(NSDictionary*)dic;
/**
 *获取我的个人信息
 **/
-(void)getMyDetailsParames:(NSDictionary*)dic;
/**
 *获取我的个人资料
 **/
-(void)getMyProfileParames:(NSDictionary*)dic;
/**
 *获取我的二维码
 **/
-(void)getmyQrCodeParames:(NSDictionary*)dic;
/**
 *修改我的个人资料
 **/
-(void)modifyMyProfileParames:(NSDictionary*)dic;
/**
 *修改我的个人资料
 **/
-(void)modifyNewPhoneParames:(NSDictionary*)dic;
/**
 *上传用户头像
 **/
-(void)updateImageActionParames:(NSDictionary*)dic;

/**
 *上传图片
 **/
-(void)uploadPictureParames:(NSArray*)photoArr;
/**
 *获取省
 **/
-(void)userListProvinceNameParames:(NSDictionary*)dic;
/**
 *获取市
 **/
-(void)userListCityNameParames:(NSDictionary*)dic;
/**
 *获取县
 **/
-(void)userListDistrictNameParames:(NSDictionary*)dic;
/**
 *获取省市区3级
 **/
-(void)userMerchantListAreaParames:(NSDictionary*)dic;
/**
 *获取经营类目
 **/
-(void)sellCategorySearchForTreeParames:(NSDictionary*)dic;

/**
 *定位/搜索城市
 **/
-(void)merchantSearchCityByNameOPinYinParames:(NSDictionary*)dic;
/**
 *获取当前定位城市信息(通过name）
 **/
-(void)merchantGetIndexCityParames:(NSDictionary*)dic;
/**
 *按字母获取所有城市信息
 **/
-(void)merchantGetCityListOrderByParames:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
