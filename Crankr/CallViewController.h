//
//  CallViewController.h
//  Crankr
//
//  Created by Andrew Brandt on 10/25/14.
//  Copyright (c) 2014 Dory Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Sinch/Sinch.h>

#import "SINUIViewController.h"

typedef enum { kButtonsAnswerDecline, kButtonsHangup, } EButtonsBar;

@interface CallViewController : SINUIViewController <SINCallDelegate>

@property (weak, nonatomic) IBOutlet UILabel *remoteUsername;
@property (weak, nonatomic) IBOutlet UILabel *callStateLabel;
@property (weak, nonatomic) IBOutlet UIButton *endCallButton;

@property (nonatomic, readwrite, strong) NSTimer *durationTimer;

@property (nonatomic, readwrite, strong) id<SINCall> call;

- (IBAction)hangup:(id)sender;

@end
