//
//  YBViewController.m
//  AgeofLaika
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCaculate:(UIButton *)sender {
   NSString *ageOfHumanstr=self.ageOfHuman.text;
    int ageOfHuman=[ageOfHumanstr intValue];
    int ageOfDog=ageOfHuman*9;
    self.ageOfDog.text=[NSString stringWithFormat:@"%d",ageOfDog];
    [self.ageOfHuman resignFirstResponder];
    
    
    
    
}
@end
