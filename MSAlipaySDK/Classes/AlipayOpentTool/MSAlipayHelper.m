//
//  MSAlipayHelper.m
//  AliPaySDK
//
//  Created by zzg on 2018/7/13.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSAlipayHelper.h"
#import <AlipaySDK/AlipaySDK.h>
#import "MSAlipayConfig.h"
//#import <AlipaySDK/AlipaySDK.h>
//
//#import "Order.h"
//#import "DataSigner.h"


@implementation MSAlipayHelper

/**
 测试阿里支付，所有的参数自己通过demo请求获取
 */
+ (void)AliPayTest {
//    NSString *partner = MSAlipayPartner;
//    NSString *seller = MSAlipaySeller;
//    NSString *privateKey = MSAlipayPrivateKey;
//
//    //partner和seller获取失败,提示
//    if ([partner length] == 0 ||
//        [seller length] == 0 ||
//        [privateKey length] == 0)
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示"
//                                                        message:@"缺少partner或者seller或者私钥。"
//                                                       delegate:self
//                                              cancelButtonTitle:@"确定"
//                                              otherButtonTitles:nil];
//        [alert show];
//        return;
//    }
//    //将商品信息赋予AlixPayOrder的成员变量
//    Order *order = [[Order alloc] init];
//    order.partner = partner;
//    order.seller = seller;
//    order.tradeNO = [self generateTradeNO]; //订单ID（由商家自行制定）
//    order.productName = @"南方姑娘";
//    order.productDescription = @"ios5"; //商品描述
//    order.amount = [NSString stringWithFormat:@"%.2f",0.01]; //商品价格
//    order.notifyURL = @"http://www.andvip.com/PayNotify/alipay_one"; //回调URL
//    order.service = @"mobile.securitypay.pay";
//    order.paymentType = @"1";
//    order.inputCharset = MSAlipayCharset;
//    order.itBPay = MSAlipayitBPay;
//    order.showUrl = @"m.alipay.com";
//
//    NSString *appScheme = MSAlipayAppScheme;
//
//    //将商品信息拼接成字符串
//    NSString *orderSpec = [order description];
//
//    //获取私钥并将商户信息签名,外部商户可以根据情况存放私钥和签名,只需要遵循RSA签名规范,并将签名字符串base64编码和UrlEncode
//    id<DataSigner> signer = CreateRSADataSigner(privateKey);
//    NSString *signedString = [signer signString:orderSpec];
//
//    //将签名成功字符串格式化为订单字符串,请严格按照该格式
//    NSString *orderString = nil;
//    if (signedString != nil) {
//        orderString = [NSString stringWithFormat:@"%@&sign=\"%@\"&sign_type=\"%@\"",
//                       orderSpec, signedString, @"RSA"];
//
//        [[AlipaySDK defaultService] payOrder:orderString fromScheme:appScheme callback:^(NSDictionary *resultDic) {
//            NSLog(@"reslut = %@",resultDic);
//            //支付成功
//            if ([[resultDic valueForKey:@"resultStatus"]isEqualToString:@"9000"]) {
//                //[resultDic valueForKey:@"memo"];
//                //[resultDic valueForKey:@"result"];
//
//                //更新订单状态为支付成功
//            } else {
//                //支付失败
//            }
//        }];
//    }
}


+ (NSString *)generateTradeNO
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


/**
 唤起支付宝支付
 
 @param payOrderString 唤起支付宝要传入的参数，
 **自行校验是否为空数据
 */
+ (void)WakeupAliPayPay:(NSString *)payOrderString fromScheme:(NSString *)scheme handler:(void(^)(NSDictionary *result))callHandler {
    if (payOrderString) {
        
        [[AlipaySDK defaultService] payOrder:payOrderString fromScheme:scheme callback:^(NSDictionary *resultDic) {
            if (callHandler) {
                callHandler(resultDic);
            }
//            NSLog(@"reslut = %@",resultDic);
//            //支付成功
//            if ([[resultDic valueForKey:@"resultStatus"]isEqualToString:@"9000"]) {
//                //[resultDic valueForKey:@"memo"];
//                //[resultDic valueForKey:@"result"];
//
//
//            } else {
//                //支付失败
//            }
        }];
    }
}

@end
