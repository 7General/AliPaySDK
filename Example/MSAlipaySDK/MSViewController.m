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
//    NSString * ordr = @"partner=\"2088021481125264\"&seller_id=\"taixinyuan007@163.com\"&out_trade_no=\"IEEPK9JSKBFRWFB\"&subject=\"南方姑娘\"&body=\"ios5\"&total_fee=\"0.01\"&notify_url=\"http://www.andvip.com/PayNotify/alipay_one\"&service=\"mobile.securitypay.pay\"&payment_type=\"1\"&_input_charset=\"utf-8\"&it_b_pay=\"30m\"&show_url=\"m.alipay.com\"&sign=\"mux9CSyB9HRRdKrpCT8UoWut6tAudo9EoQDsfWoRVrHFOJw61wkYNGGijax6CNAVb9lt8ZG1Qx6m8L3ODHrsBqWeeesxrIHevQceg9qHrO3KQe82c7cCf4DcmDWbUKswnigfETymI4TPl0JU7chUs28ducCuMjBJfip7c%2F3T5Yg%3D\"&sign_type=\"RSA\"";
  NSString * ordr = @"alipay_sdk=alipay-sdk-java-dynamicVersionNo&app_id=2016080401705668&biz_content=%7B%22body%22%3A%22%E6%94%AF%E4%BB%98%E5%AE%9Dapp%E6%94%AF%E4%BB%98%22%2C%22out_trade_no%22%3A%221140271694711468BOI1531%22%2C%22product_code%22%3A%22QUICK_MSECURITY_PAY%22%2C%22subject%22%3A%22%E8%BD%A6%E5%90%8E%E6%9C%8D%E5%8A%A12000%E5%9D%97%22%2C%22total_amount%22%3A%220.01%22%7D&charset=utf-8&format=JSON&method=alipay.trade.app.pay&notify_url=http%3A%2F%2Fpayment-test.guazi.com%2Fpaycallback%2Fpaym%2Fpay%2Faggregation%2Fchehou_ali_app_276&return_url=http%3A%2F%2Fwww.baidu.com&sign=cS3bsA4%2BGsn%2BkObhOwcTYCp3QNgZtZh8NvyENUTyOPtmDtTTaGtolTTRrjrk3%2BnG%2FLeJasUagzIhBmDa95s%2FCyGErDd4WIzD6EGYta4d%2B77men9CP2CZbe70gzrP13w2PdGt6%2FLvXla5x47gjIpVidYJYCbzX7%2FlCNJeIuvbLEs%3D&sign_type=RSA&timestamp=2018-07-18+10%3A27%3A17&version=1.0";
    [MSAlipayHelper WakeupAliPayPay:ordr];
}

@end
