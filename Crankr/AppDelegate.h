//
//  AppDelegate.h
//  Crankr
//
//  Created by Andrew Brandt on 10/25/14.
//  Copyright (c) 2014 Dory Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Sinch/Sinch.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, SINClientDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) id<SINClient> client;

- (void)initSinchClientWithUserId:(NSString *)userId;

@end

