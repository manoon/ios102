//
//  YBViewController.m
//  Man's Best Friend
//
//  Created by yibeitech on 3/10/14.
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

- (IBAction)btnRealDogAge:(UIButton *)sender {
    float ageOfHuman = [self.ageOfHuman.text floatValue];
    float realAgeOfDog=2.0;
    
    if (ageOfHuman>2.0){
      realAgeOfDog = ageOfHuman*2+(ageOfHuman-2)*1.7;
        
    }
    else{
      realAgeOfDog = ageOfHuman*2;
    }
  
    
    self.ageOfDog.text = [NSString stringWithFormat:@"%f",realAgeOfDog];
    [self.ageOfHuman resignFirstResponder];
    
    
}

- (IBAction)btnDogAge:(UIButton *)sender {
    int ageOfHuman = [self.ageOfHuman.text intValue];
    int ageOfDog = ageOfHuman * 2;
    self.ageOfDog.text = [NSString stringWithFormat:@"%d",ageOfDog];
    [self.ageOfHuman resignFirstResponder];
    
    
}
@end
