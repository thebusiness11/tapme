//
//  MLVViewController.h
//  TapMe
//
//  Created by Lance Velasco on 8/9/13.
//  Copyright (c) 2013 MLV Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLVViewController : UIViewController {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
}

- (IBAction)buttonPressed;

@end
