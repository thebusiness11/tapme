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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) buttonPressed {
    scoreLabel.text = @"Pressed!";
}

@end
