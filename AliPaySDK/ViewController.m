//
//  ViewController.m
//  AliPaySDK
//
//  Created by zzg on 2018/7/11.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "ViewController.h"
#import <AlipaySDK/AlipaySDK.h>
#import "Order.h"
#import "DataSigner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *partner = @"2088021481125264";
    NSString *seller = @"taixinyuan007@163.com";
    NSString *privateKey = @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBANCgAeyaWXHuby6j1RmaDwiZqKz+Tkwupz0Smd2XNVVzMSEEYyUUlPII9XnXI9N62jkMlIkCFGcnpa/7zDMZP/sOjr9Y6Ei5UI4FYINfxRCoWa/icVGawvz8I4RIBGbX0Eb1BGZol13s2xm1/ufU+MWT4DY9iU21zGHk6cK6CJDHAgMBAAECgYAjtQ8/QNfIUUgEUpQ5so2aKjqdiVU7YszK/jEJpUTCoFmrTgXuJcysdG4XcYQ3QRKyqv2NSabWVQndyhoUMOErNx9WUwJBDxVjQOjkGRoW7JwyhxU138bFFtG/MzqLHWfndezBVSC6JROzNHCwlwBxc5kmSB/Xs46GFFMZi4bxmQJBAOqLmzm0wf097T+8SKMzrmrfAGAMCFoLdyisMCSGLviZ0etk4WoEBykCF8a8gBD6RuLaG9TWvVWmSvsjrJHW4c0CQQDjtWuYFDCA6BoczB98l5dDgGkv1G7F9nhkmSDbZxGCKjo0gG3sbiekGumaRVNwEzUWhkzFoL5akzB6U9E3/7jjAkEAsDxOWsHzsbHCf02e1uKSgEMoKQNhkydiVfFsC0W4LZyHG3Ul219DchDchLxHDnrAoNx6ZScmBSF63dIkbUElUQJAVkoSms/TzZWnB5Cmwe0kKjVIJxLmY2hSGTUaCWqWbPAZnHmqrjTUGtEEAy0QQGFW9dEw2Jdgayxp64FFwGXMpwJBAObXA5yki9kIPmGwdekVzW7Nq/LdGJa4e01bwdwVuClk+yk2bcdgVgb5acuH8PZ59jhgwQK8qlp+lBlphJAAFGw=";
    /*============================================================================*/
    /*============================================================================*/
    /*============================================================================*/
    
    //partner和seller获取失败,提示
    if ([partner length] == 0 ||
        [seller length] == 0 ||
        [privateKey length] == 0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                        message:@"缺少partner或者seller或者私钥。"
                                                       delegate:self
                                              cancelButtonTitle:@"确定"
                                              otherButtonTitles:nil];
        [alert show];
        return;
    }
    /*
     *生成订单信息及签名
     */
    //将商品信息赋予AlixPayOrder的成员变量
    Order *order = [[Order alloc] init];
    order.partner = partner;
    order.seller = seller;
    order.tradeNO = [self generateTradeNO]; //订单ID（由商家自行制定）
    order.productName = @"南方姑娘";
    order.productDescription = @"ios5"; //商品描述
    order.amount = [NSString stringWithFormat:@"%.2f",0.01]; //商品价格
    order.notifyURL = @"http://www.andvip.com/PayNotify/alipay_one"; //回调URL
    order.service = @"mobile.securitypay.pay";
    order.paymentType = @"1";
    order.inputCharset = @"utf-8";
    order.itBPay = @"30m";
    order.showUrl = @"m.alipay.com";
    
    NSString *appScheme = @"alisdkdemo";
    
    //将商品信息拼接成字符串
    NSString *orderSpec = [order description];
    
    //获取私钥并将商户信息签名,外部商户可以根据情况存放私钥和签名,只需要遵循RSA签名规范,并将签名字符串base64编码和UrlEncode
    id<DataSigner> signer = CreateRSADataSigner(privateKey);
    NSString *signedString = [signer signString:orderSpec];
    
    //将签名成功字符串格式化为订单字符串,请严格按照该格式
    NSString *orderString = nil;
    if (signedString != nil) {
        orderString = [NSString stringWithFormat:@"%@&sign=\"%@\"&sign_type=\"%@\"",
                       orderSpec, signedString, @"RSA"];
        
        [[AlipaySDK defaultService] payOrder:orderString fromScheme:appScheme callback:^(NSDictionary *resultDic) {
            NSLog(@"reslut = %@",resultDic);
            //支付成功
            if ([[resultDic valueForKey:@"resultStatus"]isEqualToString:@"9000"])
            {
                //[resultDic valueForKey:@"memo"];
                //[resultDic valueForKey:@"result"];
                
                //更新订单状态为支付成功
                
            }
            //支付失败
            else
            {
                
            }
        }];
    }
    
}


- (NSString *)generateTradeNO
{
    static int kNumber = 15;
    
    NSString *sourceStr = @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSMutableString *resultStr = [[NSMutableString alloc] init];
    srand((unsigned)time(0));
    for (int i = 0; i < kNumber; i++)
    {
        unsigned index = rand() % [sourceStr length];
        NSString *oneStr = [sourceStr substringWithRange:NSMakeRange(index, 1)];
        [resultStr appendString:oneStr];
    }
    return resultStr;
}



@end
