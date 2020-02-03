//
//  AppDelegate.h
//  testOCtoFlutter2
//
//  Created by EchoZuo on 2019/10/24.
//  Copyright © 2019 EchoZuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, FlutterAppLifeCycleProvider>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) FlutterEngine *flutterEngine;


@end

