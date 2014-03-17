//
//  PAFactory.m
//  PIrate Adventure
//
//  Created by yibeitech on 3/15/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "PAFactory.h"
#import "PATile.h"
//#import "PAArmor.h"
//#import "PAWeapon.h"
#import "PACharacter.h"
@implementation PAFactory


-(NSArray *) tiles;
{

    PATile *tile1 = [[PATile alloc]init];
    PATile *tile2 = [[PATile alloc]init];
    PATile *tile3 = [[PATile alloc]init];
    PATile *tile4 = [[PATile alloc]init];
    PATile *tile5 = [[PATile alloc]init];
    PATile *tile6 = [[PATile alloc]init];
    PATile *tile7 = [[PATile alloc]init];
    PATile *tile8 = [[PATile alloc]init];
    PATile *tile9 = [[PATile alloc]init];
    PATile *tile10 = [[PATile alloc]init];
    PATile *tile11 = [[PATile alloc]init];
    PATile *tile12 = [[PATile alloc]init];
    tile1.backgroundImage = [UIImage imageNamed:@("a.jpg")];
    tile2.backgroundImage = [UIImage imageNamed:@("b.jpg")];
    tile3.backgroundImage = [UIImage imageNamed:@("c.jpg")];
    tile4.backgroundImage = [UIImage imageNamed:@("d.jpg")];
    tile5.backgroundImage = [UIImage imageNamed:@("e.jpg")];
    tile6.backgroundImage = [UIImage imageNamed:@("f.jpg")];
    tile7.backgroundImage = [UIImage imageNamed:@("g.jpg")];
    tile8.backgroundImage = [UIImage imageNamed:@("h.jpg")];
    tile9.backgroundImage = [UIImage imageNamed:@("i.jpg")];
    tile10.backgroundImage = [UIImage imageNamed:@("j.jpg")];
    tile11.backgroundImage = [UIImage imageNamed:@("k.jpg")];
    tile12.backgroundImage = [UIImage imageNamed:@("l.jpg")];
    
    tile1.healthEffect = 20;
    PAArmor *steelArmor = [[PAArmor alloc]init];
    steelArmor.name = @"Stell Armor";
    steelArmor.Health = 8;
    tile1.armor = steelArmor;
    tile1.actionButtonName =@"Use Pistol";
    
    
    tile2.healthEffect = 19;
    PAWeapon *bluntedSword = [[PAWeapon alloc]init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile2.weapon = bluntedSword;
    tile2.actionButtonName =@"Use Pistol";
    
    
    tile3.healthEffect = 99;
    PAWeapon *knife = [[PAWeapon alloc]init];
    knife.name = @"Knife";
    knife.damage = 17;
    tile3.weapon = knife;
    tile3.actionButtonName =@"Use Knife";
    
    
    tile4.healthEffect = 20;
    PAArmor *parrotArmor = [[PAArmor alloc]init];
    parrotArmor.name = @"parrot Armor";
    parrotArmor.Health = 18;
    tile4.armor = steelArmor;
    tile4.actionButtonName =@"Use aprrot";
    
    tile5.healthEffect = 195;
    tile5.actionButtonName = @"Five 55";
    
    tile6.healthEffect = 16;
    tile6.actionButtonName = @"Five 66";
    
    tile7.healthEffect = 17;
    tile7.actionButtonName = @"Five 77";
    
    tile8.healthEffect = 198;
    tile8.actionButtonName = @"Five 88";
    
    tile9.healthEffect = 199;
    tile9.actionButtonName = @"Five 99";
    
    tile10.healthEffect = 190;
    tile10.actionButtonName = @"Five 10";
    
    
    tile11.healthEffect = 191;
    tile11.actionButtonName = @"11 Five";
    
    tile12.healthEffect = 192;
    tile12.actionButtonName = @"twleve";
    
    
    
    
    
    
    tile1.story = @"story1";
    tile2.story = @"story2";
    tile3.story = @"story3";
 
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    tile4.story = @"story4";
    tile5.story = @"story5";
    tile6.story = @"story6";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    tile7.story = @"story7";
    tile8.story = @"story8";
    tile9.story = @"story9";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    tile10.story = @"story10";
    tile11.story = @"story11";
    tile12.story = @"story12";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn,secondColumn,thirdColumn,fourthColumn, nil];
    

    return tiles;
}

-(PACharacter *) character
{
    PACharacter *character = [[ PACharacter alloc]init];
    character.health = 100;
    PAArmor *armor = [[ PAArmor alloc]init];
    armor.name = @"Cloadk";
    armor.health = 5;
    character.armor = armor;
    
    PAWeapon *weapon = [[ PAWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    return character;
    
}


-(PABoss *) boss
{
    PABoss *boss = [[PABoss alloc] init];
    boss.health=65;
    return boss;
    
}

@end
