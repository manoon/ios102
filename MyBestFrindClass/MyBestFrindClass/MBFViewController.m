//
//  MBFViewController.m
//  MyBestFrindClass
//
//  Created by yibeitech on 3/10/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"
@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    MBFDog *myDog = [[MBFDog alloc] init];
      NSLog(@"My Dog is named %@ and it's age is %i and the breed is %@",myDog.name,myDog.age,myDog.breed);
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
//    myDog.age = @"1"; //err for this
    myDog.age = 1;
    
    NSLog(@"My Dog is named %@ and it's age is %i and the breed is %@",myDog.name,myDog.age,myDog.breed);
    
    myDog = nil;
    
    NSLog(@"My Dog is named %@ and it's age is %i and the breed is %@",myDog.name,myDog.age,myDog.breed);
    
    
    NSLog(@"---------------------\n");
    MBFDog *yourDog = [[MBFDog alloc] init];
    [yourDog bark];
    
    
    
    
// method with args
    
    MBFDog *mDog = [[MBFDog alloc] init];
    NSLog(@"method with args \n");
    
    NSLog(@"---------------------\n");
    [mDog barkOfANumberOfTimes: 10];
    [mDog barkOfANumberOfTimes:2 loudly: NO];
    //[mDog barkOfANumberOfTimes:5 loudly:YES];
    
    
    
// method with return value
  
   
    
    NSLog(@"method with return values \n");
    
    NSLog(@"---------------------\n");
    
    int dogAge = [ mDog caculateAgeOfDogs:2 ];
    float dogAgeOlder = [ mDog caculateAgeOfDogs:3 extraAge:17 ];
    NSLog(@"DogAge is %d",dogAge);
    NSLog(@"DogAgeOlder is %f",dogAgeOlder);
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
