//
//  MBFDog.h
//  MansBestFriend
//
//  Created by yibeitech on 3/13/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *breed;
@property (nonatomic) int age;
@property (nonatomic,strong) UIImage *image;

-(void) showDogs;

@end
