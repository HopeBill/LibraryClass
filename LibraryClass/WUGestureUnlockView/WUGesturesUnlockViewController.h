//
//  WUGestureUnlockViewController.h
//  WUGesturesToUnlock
//
//  Created by wuqh on 16/4/1.
//  Copyright © 2016年 wuqh. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,WUUnlockType) {
    WUUnlockTypeCreatePwd,//创建手势密码
    WUUnlockTypeValidatePwd,//校验手势密码
    WUUnlockTypeCancel,// 取消
    WUUnlockTypeSuccessful,//成功
    WUUnlockTypeFailure,//失败
    WUUnlockTypePayPassword,//支付密码
    WUUnlockTypeForget,//忘记手势密码
};
typedef void(^GesturesUnlockBlock)(WUUnlockType type);
@interface WUGesturesUnlockViewController : UIViewController

+ (void)deleteGesturesPassword;//删除手势密码
+ (NSString *)gesturesPassword;//获取手势密码

@property(nonatomic,strong)NSString *password;//手势密码

@property(nonatomic,copy)GesturesUnlockBlock actionBlcok;
- (instancetype)initWithUnlockType:(WUUnlockType)unlockType;


@end
