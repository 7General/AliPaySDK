//
//  MSViewController.m
//  MSAlipaySDK
//
//  Created by wanghuizhou21@163.com on 07/13/2018.
//  Copyright (c) 2018 wanghuizhou21@163.com. All rights reserved.
//

#import "MSViewController.h"
#import <MSAlipaySDK/MSAlipaySDK.h>

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString * ordr = @"partner=\"2088021481125264\"&seller_id=\"taixinyuan007@163.com\"&out_trade_no=\"IEEPK9JSKBFRWFB\"&subject=\"南方姑娘\"&body=\"ios5\"&total_fee=\"0.01\"&notify_url=\"http://www.andvip.com/PayNotify/alipay_one\"&service=\"mobile.securitypay.pay\"&payment_type=\"1\"&_input_charset=\"utf-8\"&it_b_pay=\"30m\"&show_url=\"m.alipay.com\"&sign=\"mux9CSyB9HRRdKrpCT8UoWut6tAudo9EoQDsfWoRVrHFOJw61wkYNGGijax6CNAVb9lt8ZG1Qx6m8L3ODHrsBqWeeesxrIHevQceg9qHrO3KQe82c7cCf4DcmDWbUKswnigfETymI4TPl0JU7chUs28ducCuMjBJfip7c%2F3T5Yg%3D\"&sign_type=\"RSA\"";
    [MSAlipayHelper WakeupAliPayPay:ordr];
}

@end
