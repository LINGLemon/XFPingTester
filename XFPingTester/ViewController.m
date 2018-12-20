//
//  ViewController.m
//  XFPingTester
//
//  Created by lingxuanfeng on 2018/12/20.
//  Copyright © 2018 lingxuanfeng. All rights reserved.
//

#import "ViewController.h"

#import "XFPingTester.h"

@interface ViewController () <XFPingDelegate>

@property(nonatomic, strong) XFPingTester *pingTester;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.pingTester = [[XFPingTester alloc] initWithHostName:@"www.baidu.com"];
    self.pingTester.delegate = self;
    [self.pingTester startPing];
}

#pragma mark - XFPingDelegate
- (void)didPingSucccessWithHostName:(NSString *)hostName withTime:(float)time withError:(NSError *)error;
{
    if (error)
    {
        NSLog(@"网络有问题");
    }
    else
    {
        NSLog(@"%@", [[NSString stringWithFormat:@"%d", (int)time] stringByAppendingString:@"ms"]);
    }
}

@end
