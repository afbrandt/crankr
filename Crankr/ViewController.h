//
//  ViewController.h
//  Crankr
//
//  Created by Andrew Brandt on 10/25/14.
//  Copyright (c) 2014 Dory Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *destination;
@property (weak, nonatomic) IBOutlet UIButton *callButton;

- (IBAction)call:(id)sender;

@end

