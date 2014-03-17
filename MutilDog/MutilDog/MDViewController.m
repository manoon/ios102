//
//  MDViewController.m
//  MutilDog
//
//  Created by yibeitech on 3/13/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "MDViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"
@interface MDViewController ()

@end

@implementation MDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // MBFDog *myDog = [MBFDog [alloc] init];
    //MBFDog *myDog = [MBFDog [alloca] init];
    
    self.curIndex = 0;
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.age = 10;
    myDog.name = @"Livid";
    myDog.breed = @"Mcl judge";
    myDog.image = [UIImage imageNamed:@"darwin.jpg"];
    
    self.myImageView.image = myDog.image;
    self.dogName.text = myDog.name;
    self.dogBreed.text = myDog.breed;
    
    
    MBFDog *myDog1 = [[MBFDog alloc] init];
    myDog1.age = 10;
    myDog1.name = @"Kevin";
    myDog1.breed = @"Ruby loi";
    myDog1.image = [UIImage imageNamed:@"letyougo.jpg"];
    
    MBFDog *myDog2 = [[MBFDog alloc] init];
    myDog2.age = 10;
    myDog2.name = @"Neo";
    myDog2.breed = @"Jack Chen";
    myDog2.image = [UIImage imageNamed:@"babbylotto.jpg"];
    
    MBFDog *myDog3 = [[MBFDog alloc] init];
    myDog3.age = 10;
    myDog3.name = @"Leo";
    myDog3.breed = @"Cindy Liu";
    myDog3.image = [UIImage imageNamed:@"lonelyboy.jpg"];
    
    self.myDogs =  [[NSMutableArray alloc]init];
    
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:myDog1];
    [self.myDogs addObject:myDog2];
    [self.myDogs addObject:myDog3];
    
    
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    [littlePuppy bark];
    [littlePuppy givePuppyEyes];
    littlePuppy.age = 18;
    littlePuppy.name = @"Little Puppy";
    littlePuppy.breed = @"Puppy Dog Neo";
    littlePuppy.image = [UIImage imageNamed:@"darwin.jpg"];
    
    [self.myDogs addObject:littlePuppy];

    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnShowDog:(id)sender {
//    for (int i = 0 ;i < [self.myDogs count] ;i ++){
//        
//    }
    int i;
    i=arc4random() % [self.myDogs count];
    
    if (self.curIndex == i && self.curIndex == 0){
        i ++;
    }
    else if(self.curIndex == i) {
        i --;
        
    }
        
        
    
    MBFDog *currentDog = [self.myDogs objectAtIndex:i];
//    self.myImageView.image = currentDog.image;
//    self.dogName.text = currentDog.name;
//    self.dogBreed.text = currentDog.breed;
    NSLog(@"current dog breed is %@",currentDog.breed);
    
    [UIView transitionWithView:self.view duration:1.2
                    options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                           self.myImageView.image = currentDog.image;
                           self.dogName.text = currentDog.name;
                           self.dogBreed.text = currentDog.breed;

                    }
                    completion:^(BOOL finished){
                        
                    }];
    
    self.curIndex = i;
}
@end
