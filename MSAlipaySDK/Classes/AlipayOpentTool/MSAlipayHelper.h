//
//  MSAlipayHelper.h
//  AliPaySDK
//
//  Created by zzg on 2018/7/13.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSAlipayHelper : NSObject

+ (instancetype)defaultManager;

/**
 +唤起支付宝支付
 
 @param payOrderString 唤起支付宝要传入的参数，
 **自行校验是否为空数据
 */
+ (void)WakeupAliPayPay:(NSString *)payOrderString fromScheme:(NSString *)scheme handler:(void(^)(NSDictionary *result))callHandler;

/**
 -唤起支付宝支付

 @param payOrderString 唤起支付宝要传入的参数，
 @param scheme URL Types
 */
- (void)WakeupAliPayPay:(NSString *)payOrderString fromScheme:(NSString *)scheme;

/**
 -唤起支付宝支付

 @param payOrderString 唤起支付宝要传入的参数，
 @param scheme URL Types
 @param callHandler 支付结果回调Block，用于wap支付结果回调（非跳转钱包支付）
 */
- (void)WakeupAliPayPay:(NSString *)payOrderString fromScheme:(NSString *)scheme handler:(void(^)(NSDictionary *result))callHandler;






@end
