//
//  QXPingTester.h
//  BigVPN
//
//  Created by lingxuanfeng on 2017/5/11.
//  Copyright © 2017年 lingxuanfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimplePing.h"

@protocol XFPingDelegate <NSObject>

@optional
- (void)didPingSucccessWithHostName:(NSString *)hostName withTime:(float)time withError:(NSError *)error;

@end


@interface XFPingTester : NSObject <SimplePingDelegate>

@property (nonatomic, weak, readwrite) id<XFPingDelegate> delegate;
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithHostName:(NSString*)hostName NS_DESIGNATED_INITIALIZER;

- (void)startPing;
- (BOOL)isPinging;
- (void)stopPing;

@end

@interface XFPingItem : NSObject

@property (nonatomic, assign) uint16_t sequence;

@end



