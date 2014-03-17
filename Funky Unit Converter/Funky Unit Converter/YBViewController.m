//
//  YBViewController.m
//  Funky Unit Converter
//
//  Created by yibeitech on 3/8/14.
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

    
    NSLog(@"Hello my Log");
    NSLog(@"Hello  Again");
    NSLog(@"a big string here");
   
    int x;
    x = 5;
    int y = 20;
    //int z = -20;
    // int y = 99; // cant not redefined
    y=99;
    
    // operators include: + - * /
    //int additionsAnswer = x + y; // 25
    //int multiplicationAnswer = y * z; //-40
    
    float heightOfEverstBaseCamp=16900.3;//floats are numbers with decmils
    // there is some comments here
    float heightOfEverst= 99999; // 99.00
    float distanceToTravel=heightOfEverst - heightOfEverstBaseCamp;
    distanceToTravel=distanceToTravel - 200;
    
    
    y =(float) 98.8;
    NSLog(@"the value of x is %i",x);
    NSLog(@"the value of x is %i,and y is %i",x,y);
    NSLog(@"the value of y is %d",y);
    NSLog(@"the value of heightOfEverstBaseCamp is %f",heightOfEverstBaseCamp);
    /*
     
     and also we can do
     comments like this
     more lines is available
     
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"DidReceiveMemeory  Warning");

}

- (IBAction)covertUnit:(UIButton *)sender {
    float numberOfFootball = [self.numberOfFootballTextfield.text floatValue];
    float numberOfFootbill=numberOfFootball/144;
    self.numberOfFootballLabel.text= [NSString stringWithFormat:@"%f",numberOfFootbill];
    [self.numberOfFootballTextfield resignFirstResponder ];
}
@end
