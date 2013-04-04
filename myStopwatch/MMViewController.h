//
//  MMViewController.h
//  myStopwatch
//
//  Created by RHINO on 2/8/13.
//  Copyright (c) 2013 RHINO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMViewController : UIViewController

{
    IBOutlet UILabel *timer;
    
    NSTimer *myCounter;
}

- (IBAction)start;
- (IBAction)stop;
- (IBAction)reset;

@end
