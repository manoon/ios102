//
//  MBFDog.m
//  MyBestFrindClass
//
//  Created by yibeitech on 3/10/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog
-(void)bark
{
    NSLog(@"Woof,Woof!");
}



-(void)barkOfANumberOfTimes:(int)NumberOfTimes
{
    for (int numbers = 0; numbers <= 10; numbers ++){
        NSLog(@"Woof,HeyHey,Woof %d",numbers);
    }
}


-(void) barkOfANumberOfTimes:(int)NumberOfTimes loudly: (BOOL) isLoud

{
    if (isLoud){
       
        for (int numbers = 0; numbers <= NumberOfTimes; numbers ++){
              NSLog(@"Woof,Loudly!WiWiWi");
        }
     
    }
    else{
        for (int numbers = 0; numbers <= NumberOfTimes; numbers ++){
            NSLog(@"Woof,NotLoud!hehehe");
        }    }
}

-(int) caculateAgeOfDogs:(int)AgeOfHuman
{
    int AgeOfDogs = AgeOfHuman * 7;
    return AgeOfDogs;
    
}

-(float) caculateAgeOfDogs:(int)AgeOfHuman extraAge:(int) age
{
    float AgeOfDogs = 0.0 ;
    
    if (age>2){
        AgeOfDogs =1.7 * (AgeOfHuman - 2) + AgeOfHuman*2;
    }
    else{
        AgeOfDogs = AgeOfHuman*2;

    }
    return AgeOfDogs;
}


@end
