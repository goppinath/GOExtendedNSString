//
//  GOViewController.m
//  GOExtendedNSString
//
//  Created by Goppinath Thurairajah on 28.07.13.
//  Copyright (c) 2013 Goppinath Thurairajah. All rights reserved.
//

#import "GOViewController.h"

#import "NSString+GOExtension.h"

@interface GOViewController ()

@end

@implementation GOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *go = @"";
    
    [go trimLastCharacters:2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
