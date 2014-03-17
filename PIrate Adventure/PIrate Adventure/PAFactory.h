//
//  PAFactory.h
//  PIrate Adventure
//
//  Created by yibeitech on 3/15/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PABoss.h"
#import "PACharacter.h"
@interface PAFactory : NSObject

-(NSArray *) tiles;
-(PABoss *) boss;
-(PACharacter *) character;


@end
