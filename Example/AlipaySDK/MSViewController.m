//
//  MSViewController.m
//  AlipaySDK
//
//  Created by wanghuizhou21@163.com on 07/13/2018.
//  Copyright (c) 2018 wanghuizhou21@163.com. All rights reserved.
//

#import "MSViewController.h"
#import <AlipaySDK/MSAlipaySDK.h>

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString * ordr = @"partner=\"2088021481125264\"&seller_id=\"taixinyuan007@163.com\"&out_trade_no=\"456WBL2MJAQVCYZ\"&subject=\"南方姑娘\"&body=\"ios5\"&total_fee=\"0.01\"&notify_url=\"http://www.andvip.com/PayNotify/alipay_one\"&service=\"mobile.securitypay.pay\"&payment_type=\"1\"&_input_charset=\"utf-8\"&it_b_pay=\"30m\"&show_url=\"m.alipay.com\"&sign=\"TGRk%2BO0hTc3A1ORKI1DyDVfJWQAvVGU2PVQuJPnVyvIriqG0I%2FY7thjVecKNn%2FBomaVgas4j4vMEhusM%2FYZ6jrsTY7AEcOAvHqQtI6ZdKXDDvXbgNE%2BkPxSJqISpWpzLJMjEG%2Bsi06xfWMq71zToMjUyhoD52wO2JoXiPc3Qu%2Bc%3D\"&sign_type=\"RSA\"";
    [MSAlipayHelper WakeupAliPayPay:ordr];
}

@end
