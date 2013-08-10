//
//  MLVViewController.h
//  TapMe
//
//  Created by Lance Velasco on 8/9/13.
//  Copyright (c) 2013 MLV Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLVViewController : UIViewController<UIAlertViewDelegate> {
  IBOutlet UILabel *scoreLabel;
  IBOutlet UILabel *timerLabel;
  
  NSInteger buttonPressedCount;
  NSInteger secondsRemaining;
  NSTimer   *timer;


}

- (IBAction)buttonPressed;

@end
