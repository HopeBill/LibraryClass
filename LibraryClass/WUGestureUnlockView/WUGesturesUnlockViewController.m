//
//  WUGestureUnlockViewController.m
//  WUGesturesToUnlock
//
//  Created by wuqh on 16/4/1.
//  Copyright © 2016年 wuqh. All rights reserved.
//

#import "WUGesturesUnlockViewController.h"
#import "WUGesturesUnlockView.h"
#import "WUGesturesUnlockIndicator.h"
#import "setUpModelManager.h"
#import "setUpRequestManager.h"
#define GesturesPassword @"gesturespassword"

@interface WUGesturesUnlockViewController ()<WUGesturesUnlockViewDelegate,UIAlertViewDelegate,NavigationDelegate,setUpRequestDelegate>

@property (weak, nonatomic) IBOutlet WUGesturesUnlockView *gesturesUnlockView;
@property (weak, nonatomic) IBOutlet WUGesturesUnlockIndicator *gesturesUnlockIndicator;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
 //重新绘制按钮
@property (weak, nonatomic) IBOutlet UIButton *otherAcountLoginButton;
@property (weak, nonatomic) IBOutlet UIButton *forgetGesturesPasswordButton;
@property (weak, nonatomic) IBOutlet UIButton *resetGesturesPasswordButton;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *headIconImageView;

//约束：
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *indicatoerTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *indicatorWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headIconTopConstraint;


@property (nonatomic) WUUnlockType unlockType;

//要创建的手势密码
@property (nonatomic, copy) NSString *lastGesturePassword;

@property(nonatomic,strong)setUpModelManager *modelManager;
@property(nonatomic,strong)setUpRequestManager *requestManager;
@end

@implementation WUGesturesUnlockViewController

#pragma mark - 类方法

+ (void)deleteGesturesPassword {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:GesturesPassword];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)addGesturesPassword:(NSString *)gesturesPassword {
    [[NSUserDefaults standardUserDefaults] setObject:gesturesPassword forKey:GesturesPassword];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)gesturesPassword {
    return [[NSUserDefaults standardUserDefaults] objectForKey:GesturesPassword];
}

#pragma mark - inint
- (instancetype)initWithUnlockType:(WUUnlockType)unlockType {
    if (self = [super init]) {
        _unlockType = unlockType;
    }
    return self;
}

#pragma mark - viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.gesturesUnlockView.delegate = self;
    
    self.resetGesturesPasswordButton.hidden = YES;
    switch (_unlockType) {
        case WUUnlockTypeCreatePwd:
        {
            self.gesturesUnlockIndicator.hidden = NO;
            self.otherAcountLoginButton.hidden = YES;
            self.forgetGesturesPasswordButton.hidden = YES;
            self.nameLabel.hidden = YES;
            self.headIconImageView.hidden = YES;
        }
            break;
        case WUUnlockTypeValidatePwd:
        {
            self.gesturesUnlockIndicator.hidden = YES;
            self.nameLabel.hidden = YES;
            self.headIconImageView.hidden = YES;
            
        }
            break;
        default:
            break;
    }
    
    [self udpateConstraints];
    
  

}
-(void)viewWillAppear:(BOOL)animated{
    NavigationController *nav=(NavigationController*)self.navigationController;
    nav.navdelegate=self;
}
#pragma mark======NavigationDelegate=======
-(void)leftBarButtonAction{
    
    if (self.actionBlcok) {
        self.actionBlcok(WUUnlockTypeCancel);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - private
//创建手势密码
- (void)createGesturesPassword:(NSMutableString *)gesturesPassword {
    
    if (self.lastGesturePassword.length == 0) {
        if (gesturesPassword.length <4) {
            self.statusLabel.text = @"至少连接四个点，请重新输入";
            [self shakeAnimationForView:self.statusLabel];
            return;
        }
        
        if (self.resetGesturesPasswordButton.hidden == YES) {
            self.resetGesturesPasswordButton.hidden = NO;
        }
        
        self.lastGesturePassword = gesturesPassword;
        [self.gesturesUnlockIndicator setGesturesPassword:gesturesPassword];
        self.statusLabel.text = @"请再次绘制手势密码";
        return;
    }
    
    if ([self.lastGesturePassword isEqualToString:gesturesPassword]) {
        
        
        //绘制成功
        //创建手势密码
        dispatch_async(dispatch_get_main_queue(), ^{
            NSDictionary *dic=[self.modelManager gesturePasswordParameter:gesturesPassword];
            
            [self.requestManager userCreatGesturePasswordAction:dic];
        });
     
        
    }else {
        self.statusLabel.text = @"与上一次绘制不一致，请重新绘制";
        [self shakeAnimationForView:self.statusLabel];
    }
    
}
//验证手势密码
- (void)validateGesturesPassword:(NSMutableString *)gesturesPassword {
    
//    static NSInteger errorCount = 5;
    
    //效验手势密码
    NSDictionary *dic=[self.modelManager gesturePasswordValidationParameter:gesturesPassword];
    [YJProgressHUD showProgress:nil inView:self.view];
    [self.requestManager userVerifyGesturePasswordAction:dic];
    
//    if ([gesturesPassword isEqualToString:[WUGesturesUnlockViewController gesturesPassword]]) {
//        [self dismissViewControllerAnimated:YES completion:^{
//            errorCount = 5;
//        }];
//    }else {
//
//        if (errorCount - 1 == 0) {//你已经输错五次了！ 退出登陆！
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"手势密码已失效" message:@"请重新登陆" delegate:self cancelButtonTitle:nil otherButtonTitles:@"重新登陆", nil];
//            [alertView show];
//            errorCount = 5;
//            return;
//        }
//
//        self.statusLabel.text = [NSString stringWithFormat:@"密码错误，还可以再输入%ld次",--errorCount];
//        [self shakeAnimationForView:self.statusLabel];
//    }
}

//抖动动画
- (void)shakeAnimationForView:(UIView *)view
{
    CALayer *viewLayer = view.layer;
    CGPoint position = viewLayer.position;
    CGPoint left = CGPointMake(position.x - 10, position.y);
    CGPoint right = CGPointMake(position.x + 10, position.y);
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFromValue:[NSValue valueWithCGPoint:left]];
    [animation setToValue:[NSValue valueWithCGPoint:right]];
    [animation setAutoreverses:YES]; // 平滑结束
    [animation setDuration:0.08];
    [animation setRepeatCount:3];
    
    [viewLayer addAnimation:animation forKey:nil];
}

//更新约束，进行适配
- (void)udpateConstraints {
    if (Screen_Height == 480) {// 适配4寸屏幕
        
        self.headIconTopConstraint.constant = 30;
        self.indicatoerTopConstraint.constant = 64;
        
    }
    
}

#pragma mark - Action
#pragma mark===  使用支付密码支付
- (IBAction)otherAccountLogin:(id)sender {
      [self dismissViewControllerAnimated:NO completion:nil];
    if (self.actionBlcok) {
        self.actionBlcok(WUUnlockTypePayPassword);
    }
}
#pragma mark===  点击重新绘制按钮
- (IBAction)resetGesturePassword:(id)sender {
    NSLog(@"%s",__FUNCTION__);
    [self redrawGesturePasswordAction];
}
-(void)redrawGesturePasswordAction{
    self.lastGesturePassword = nil;
    self.statusLabel.text = @"请绘制手势密码";
    self.resetGesturesPasswordButton.hidden = YES;
    [self.gesturesUnlockIndicator setGesturesPassword:@""];
}
#pragma mark===  点击忘记手势密码按钮
- (IBAction)forgetGesturesPassword:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
    if (self.actionBlcok) {
        self.actionBlcok(WUUnlockTypeForget);
    }
}


#pragma mark - WUGesturesUnlockViewDelegate
- (void)gesturesUnlockView:(WUGesturesUnlockView *)unlockView drawRectFinished:(NSMutableString *)gesturePassword {
    
    switch (_unlockType) {
        case WUUnlockTypeCreatePwd://创建手势密码
        {
            [self createGesturesPassword:gesturePassword];
        }
            break;
        case WUUnlockTypeValidatePwd://校验手势密码
        {
            [self validateGesturesPassword:gesturePassword];
        }
            break;
        default:
            break;
    }
}

#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    //重新登陆
  NSLog(@"重新登陆");
}


#pragma mark=== 请求回调
-(void)setUpRequestReturnSuccess:(NSString *)message withData:(id)data{
    [YJProgressHUD hide];
    [self dismissViewControllerAnimated:YES completion:^{
        //保存手势密码
        //            [WUGesturesUnlockViewController addGesturesPassword:gesturesPassword];
    }];
    
    if (self.actionBlcok) {
        self.actionBlcok(WUUnlockTypeSuccessful);
    }
    
   
}
-(void)setUpRequestReturnFailure:(NSString *)message withData:(id)data{
    
    [YJProgressHUD showMessage:data inView:self.view];
    if ([message isEqualToString:userVerifyGesturePassword_URL]) {
        self.statusLabel.text = [NSString stringWithFormat:@"密码错误，请重新输入"];
        [self shakeAnimationForView:self.statusLabel];
        [self redrawGesturePasswordAction];
    }else{
        
    }
   
}


-(setUpRequestManager*)requestManager{
    if (!_requestManager) {
        _requestManager=[[setUpRequestManager alloc] init];
        _requestManager.delegate=self;
    }
    return _requestManager;
}

-(setUpModelManager*)modelManager{
    NetWorkingReformer(setUpModelManager,_modelManager)
}
@end
