//
//  MainViewController.m
//  testOCtoFlutter2
//
//  Created by EchoZuo on 2019/10/24.
//  Copyright © 2019 EchoZuo. All rights reserved.
//

#import "MainViewController.h"
#import <Flutter/Flutter.h>
#import "AppDelegate.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}

- (IBAction)btn_Click:(id)sender {
    
//    FlutterEngine *flutterEngine = [(AppDelegate *)[[UIApplication sharedApplication] delegate] flutterEngine];
//    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];\
//    flutterViewController.navigationItem.title = @"This is a title item";
//    [self.navigationController pushViewController:flutterViewController animated:YES];
    
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
    flutterViewController.navigationItem.title = @"this is a title";
//
//    FlutterBasicMessageChannel *channel = [FlutterBasicMessageChannel messageChannelWithName:@"com.ruyi.mine.version" binaryMessenger:flutterViewController];
//    [channel sendMessage:@"这是native传值过来的"];
    [self.navigationController pushViewController:flutterViewController animated:YES];
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
