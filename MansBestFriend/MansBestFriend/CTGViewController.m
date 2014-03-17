//
//  CTGViewController.m
//  MansBestFriend
//
//  Created by yibeitech on 3/13/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "CTGViewController.h"
#import "MBFDog.h"

@interface CTGViewController ()

@end

@implementation CTGViewController

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

- (IBAction)showDogs:(UIBarButtonItem *)sender {
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.age = 18;
    myDog.name = @"Neo";
    myDog.image = [UIImage imageNamed:(@"darwin.jpg")];
    //myDog.setBreed("Judge Mcl");
    myDog.breed = @"judge mcl";
    [myDog showDogs];

}
@end
