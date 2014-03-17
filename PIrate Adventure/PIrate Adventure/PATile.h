//
//  PATile.h
//  PIrate Adventure
//
//  Created by yibeitech on 3/15/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAWeapon.h"
#import "PAArmor.h"
#import "PABoss.h"

@interface PATile : NSObject

@property (strong,nonatomic) NSString *story;
@property (strong,nonatomic) UIImage *backgroundImage;
@property (strong,nonatomic) NSString *actionButtonName; // where we used it?
@property (strong,nonatomic) PAWeapon *weapon;
@property (strong,nonatomic) PAArmor *armor;
@property (nonatomic) int healthEffect;



@end
