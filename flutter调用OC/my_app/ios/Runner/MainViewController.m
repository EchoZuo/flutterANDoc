//
//  MainViewController.m
//  Runner
//
//  Created by EchoZuo on 2019/10/25.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UIAdaptivePresentationControllerDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)btn_Click:(id)sender {
    // 回调flutter模块
    [self dismissViewControllerAnimated:YES completion:^{
        self.result(@"Flutter，我回来了！！！");
    }];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
