//
//  MMViewController.m
//  myStopwatch
//
//  Created by RHINO on 2/8/13.
//  Copyright (c) 2013 RHINO. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (IBAction)start
{
    if ([myCounter isValid]){
        
    }
    else{        
        //Insert a method name and set parameters
        myCounter = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(seeTimer) userInfo:nil repeats:YES];
    }
}

- (IBAction)stop
{
    [myCounter invalidate];
}

- (IBAction)reset
{
    [timer setText:@"0"];
}

- (void)seeTimer

{
    int startTime = [[timer text] intValue];
    int newTime = startTime + 1.00;
    [timer setText: [NSString stringWithFormat:@"%i", newTime]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
