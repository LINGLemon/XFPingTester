# XFPingTester
iOSPing工具类

使用方法:

将pingTool拷入到xcode工程
引入头文件
#import "XFPingTester.h"
设置属性变量，并在controller 上面实现代理。
  @property(nonatomic, strong) XFPingTester* pingTester;
  //ping
  self.pingTester = [[XFPingTester alloc] initWithHostName:@"www.baidu.com"];
  self.pingTester.delegate = self;
  [self.pingTester startPing];
实现委托.
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
