#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "MSAlipayConfig.h"
#import "MSAlipayHelper.h"
#import "MSAlipayManager.h"
#import "MSAlipaySDK.h"

FOUNDATION_EXPORT double AlipaySDKVersionNumber;
FOUNDATION_EXPORT const unsigned char AlipaySDKVersionString[];

