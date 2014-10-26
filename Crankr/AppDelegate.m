//
//  AppDelegate.m
//  Crankr
//
//  Created by Andrew Brandt on 10/25/14.
//  Copyright (c) 2014 Dory Studios. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

#pragma mark -

- (void)initSinchClientWithUserId:(NSString *)userId {
  if (!_client) {

    _client = [Sinch clientWithApplicationKey:@"74038b66-b38a-4eea-980a-d90d530e8f70"
                            applicationSecret:@"ZQ1+KgcZxUqCJtTyIcqMMw=="
                              environmentHost:@"sandbox.sinch.com"
                                       userId:userId];

    _client.delegate = self;

    [_client setSupportCalling:YES];

    [_client start];
  }
}

- (id<SINClient>)client {
  return _client;
}

#pragma mark - SINClientDelegate

- (void)clientDidStart:(id<SINClient>)client {
  NSLog(@"Sinch client started successfully (version: %@)", [Sinch version]);
}

- (void)clientDidStop:(id<SINClient>)client {
  NSLog(@"Sinch client stopped");
}

- (void)clientDidFail:(id<SINClient>)client error:(NSError *)error {
  NSLog(@"Error: %@", error);
}

- (void)client:(id<SINClient>)client
    logMessage:(NSString *)message
          area:(NSString *)area
      severity:(SINLogSeverity)severity
     timestamp:(NSDate *)timestamp {

  if (severity == SINLogSeverityCritical) {
    NSLog(@"%@", message);
  }
}

@end
