//
//  MBFDog.h
//  MyBestFrindClass
//
//  Created by yibeitech on 3/10/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic,strong) NSString *breed;
@property (strong,nonatomic) UIImage *image;
@property (strong,nonatomic) NSString *name;

-(void) bark;
-(void) barkOfANumberOfTimes : (int) NumberOfTimes;
-(void) barkOfANumberOfTimes : (int) NumberOfTimes loudly: (BOOL) isLoud;

-(int) caculateAgeOfDogs : (int) AgeOfHuman;
-(int) caculateAgeOfDogs : (int) AgeOfHuman extraAge: (int) age;




@end
