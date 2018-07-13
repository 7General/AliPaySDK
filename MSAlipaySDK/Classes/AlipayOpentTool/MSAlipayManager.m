//
//  MSAlipayManager.m
//  AliPaySDK
//
//  Created by zzg on 2018/7/13.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "MSAlipayManager.h"
#import <AlipaySDK/AlipaySDK.h>

@implementation MSAlipayManager

+(instancetype)defaultService {
    static dispatch_once_t onceToken;
    static MSAlipayManager *instance;
    dispatch_once(&onceToken, ^{
        instance = [[MSAlipayManager alloc] init];
    });
    return instance;
}

/**
 *  处理钱包或者独立快捷app支付跳回商户app携带的支付结果Url
 *
 *  @param resultUrl 支付结果url，传入后由SDK解析，统一在上面的pay方法的callback中回调
 *  @param completionBlock 跳钱包支付结果回调，保证跳转钱包支付过程中，即使调用方app被系统kill时，能通过这个回调取到支付结果。
 */
- (void)processOrderWithPaymentResult:(NSURL *)resultUrl
                      standbyCallback:(CompletionSDKBlock)completionBlock {
    //跳转支付宝钱包进行支付，处理支付结果
    [[AlipaySDK defaultService] processOrderWithPaymentResult:resultUrl standbyCallback:^(NSDictionary *resultDic) {
        if (completionBlock) {
            completionBlock(resultDic);
        }
    }];
}

@end
