//
//  ViewController.m
//  Crankr
//
//  Created by Andrew Brandt on 10/25/14.
//  Copyright (c) 2014 Dory Studios. All rights reserved.
//

#import "ViewController.h"
#import "CallViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id<SINClient>)client {
  return [(AppDelegate *)[[UIApplication sharedApplication] delegate] client];
}

- (IBAction)call:(id)sender {
  if ([self.destination.text length] > 0 && [self.client isStarted]) {
    id<SINCall> call = [self.client.callClient callPhoneNumber:self.destination.text];
    [self performSegueWithIdentifier:@"callView" sender:call];
  }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  CallViewController *callViewController = [segue destinationViewController];
  callViewController.call = sender;
  callViewController.call.delegate = callViewController;
}

@end
