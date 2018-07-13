//
//  MSAlipayManager.h
//  AliPaySDK
//
//  Created by zzg on 2018/7/13.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CompletionSDKBlock)(NSDictionary *resultDic);

@interface MSAlipayManager : NSObject

+ (instancetype)defaultService;

/**
 *  处理钱包或者独立快捷app支付跳回商户app携带的支付结果Url
 *
 *  @param resultUrl 支付结果url，传入后由SDK解析，统一在上面的pay方法的callback中回调
 *  @param completionBlock 跳钱包支付结果回调，保证跳转钱包支付过程中，即使调用方app被系统kill时，能通过这个回调取到支付结果。
 */
- (void)processOrderWithPaymentResult:(NSURL *)resultUrl
                      standbyCallback:(CompletionSDKBlock)completionBlock;

@end
