//
//  MBFPuppy.m
//  MutilDog
//
//  Created by yibeitech on 3/14/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void) givePuppyEyes
{
    NSLog(@":-) :-)");
}


-(void) bark
{
    NSLog(@"Puppy bark! and override the MBFDog's bark ");
    [self givePuppyEyes];
}
@end
