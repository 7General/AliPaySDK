//
//  ViewController.m
//  AliPaySDK
//
//  Created by zzg on 2018/7/11.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "ViewController.h"
#import "MSAlipaySDK.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [MSAlipayHelper AliPayTest];
}






@end
