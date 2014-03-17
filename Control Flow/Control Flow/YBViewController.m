//
//  YBViewController.m
//  Control Flow
//
//  Created by yibeitech on 3/9/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "YBViewController.h"

@interface YBViewController ()

@end

@implementation YBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    int truckSpeed=45;
    int lamboSpeed=70;
    int mySpeed=truckSpeed;
    mySpeed=80;
    // some symbols
    // < > <= >= != ==
    // || &&
    if (mySpeed<70 ){
        NSLog(@"Keep crusing");
    }
    else if(mySpeed==80){
        NSString *alertInfo=[NSString stringWithFormat: @"Cruising dow highway %d",lamboSpeed];
        NSLog(@"%@",alertInfo);
    }
    
    else{
        NSLog(@"SlowDown");
    }
    
    
    BOOL isTelevisionOn = NO;
    
    if (isTelevisionOn == YES){
        NSLog(@"We should take a break!");
    }else{
         NSLog(@"Great Job,Keep up teh hard work");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
