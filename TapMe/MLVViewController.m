//
//  MLVViewController.m
//  TapMe
//
//  Created by Lance Velasco on 8/9/13.
//  Copyright (c) 2013 MLV Group. All rights reserved.
//

#import "MLVViewController.h"

@interface MLVViewController ()

@end

@implementation MLVViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self setupGame];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {

  if (timer == nil) {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
  }
  
  buttonPressedCount++;
  
  scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", buttonPressedCount];
 

}

- (void)setupGame {
  // 1
  secondsRemaining = 3;
  buttonPressedCount = 0;
  
  // 2
  timerLabel.text = [NSString stringWithFormat:@"Time: %i", secondsRemaining];
  scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", buttonPressedCount];
  
  // 3
  timer = nil;
}

- (void)subtractTime {
  // 1
  secondsRemaining--;
  timerLabel.text = [NSString stringWithFormat:@"Time: %i", secondsRemaining];
  
  // 2
  if (secondsRemaining == 0) {
    [timer invalidate];
  
    UIAlertView *gameOverAlert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"You scored %i points", buttonPressedCount] delegate: self cancelButtonTitle:@"Play Again" otherButtonTitles:nil];                               
    
    [gameOverAlert show];
    
  }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
  [self setupGame];
}


@end
