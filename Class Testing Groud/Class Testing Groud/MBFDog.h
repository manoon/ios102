//
//  MBFDog.h
//  Class Testing Groud
//
//  Created by yibeitech on 3/14/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject{
    NSString *_name;
}

@property (nonatomic,strong) NSString *name;

-(void)setNames:(NSString *)name;

-(NSString *)name;



@end
