//
//  YBViewController.m
//  For Loop
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
    for (int num = 0;num < 100;num = num + 2){
        NSLog(@"Hey,you know my Number %d",num);
    }
    int product=100;
    int maxstep=10;
    //int maxstep=32;
    for (int i=2;i<maxstep;i++){
        product=product * i;
        NSLog(@"The product now is %d",product);
    }
    
    for (int sodas=99;sodas>=0;sodas--){
        NSLog(@"There are still %i Sodas left",sodas);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
