//
//  MSAlipayHelper.h
//  AliPaySDK
//
//  Created by zzg on 2018/7/13.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CompletionSDKBlock)(NSDictionary *resultDic);
@interface MSAlipayHelper : NSObject



/**
 测试阿里支付，所有的参数自己通过demo请求获取
 */
+ (void)AliPayTest;

/**
 唤起支付宝支付
 
 @param payOrderString 唤起支付宝要传入的参数，
 **自行校验是否为空数据
 */
+ (void)WakeupAliPayPay:(NSString *)payOrderString;



@end
