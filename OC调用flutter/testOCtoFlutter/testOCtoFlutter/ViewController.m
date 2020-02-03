//
//  ViewController.m
//  TestOCToFlutter
//
//  Created by EchoZuo on 2019/10/22.
//  Copyright © 2019 EchoZuo. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/// 点击跳转flutter模块
- (IBAction)btn_Click:(id)sender {
    FlutterEngine *flutterEngine = [(AppDelegate *)[[UIApplication sharedApplication] delegate] flutterEngine];
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    flutterViewController.navigationItem.title = @"This is title item.";
    [self presentViewController:flutterViewController animated:YES completion:nil];
}


@end
