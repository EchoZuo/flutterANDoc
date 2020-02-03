//
//  FlutterNativePlugin.m
//  Runner
//
//  Created by EchoZuo on 2019/10/25.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "FlutterNativePlugin.h"
#import "MainViewController.h"

@implementation FlutterNativePlugin


// name：String类型，代表Channel的名字，也是其唯一标识符。
// messager：BinaryMessenger类型，代表消息信使，是消息的发送与接收的工具。
// codec： MessageCodec 类型 或MethodCodec类型，代表消息的编解码器。
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"come.echozuo.zzz/flutter" binaryMessenger:[registrar messenger]];
    FlutterNativePlugin *instance = [[FlutterNativePlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}


- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
    if ([call.method isEqualToString:@"bestpay"]) {
        result(@"爱你，么么哒 😘");
    } else if ([call.method isEqualToString:@"bestpay1"]) {
        MainViewController *vc = [[MainViewController alloc] init];
        vc.result = result;
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
    } else {
        result(FlutterMethodNotImplemented);
    }
}

@end
