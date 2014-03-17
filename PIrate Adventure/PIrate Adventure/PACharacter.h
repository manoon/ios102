//
//  PACharacter.h
//  PIrate Adventure
//
//  Created by yibeitech on 3/17/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAArmor.h"
#import "PAWeapon.h"
@interface PACharacter : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) PAWeapon *weapon;
@property (nonatomic,strong) PAArmor *armor;

@property (nonatomic) int health;
@property (nonatomic) int damage;

@end
