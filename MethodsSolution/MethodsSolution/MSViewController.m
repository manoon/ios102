//
//  MSViewController.m
//  MethodsSolution
//
//  Created by yibeitech on 3/12/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "MSViewController.h"
#import "MeSo.h"



@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // problem 1
    MeSo *ms1=[[MeSo alloc] init];
    [ms1 makeItLess:3];
    
    //problem 2
    
    [ms1 makeItLess: 2 end:6];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
