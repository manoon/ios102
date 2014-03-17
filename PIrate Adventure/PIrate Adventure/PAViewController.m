//
//  PAViewController.m
//  PIrate Adventure
//
//  Created by yibeitech on 3/15/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "PAViewController.h"
#import "PAFactory.h"
#import "PATile.h"
@interface PAViewController ()

@end

@implementation PAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    PAFactory *factory = [[ PAFactory alloc] init];
    self.tiles = [factory tiles];
    self.currentPoint = CGPointMake(0,0);
    self.character = [factory character];
    self.boss = [factory boss];
    NSLog(@"%f %f",self.currentPoint.x,self.currentPoint.y);
    [self updateTile];
    [self updateButtons];
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    
}

// self defined method
- (void)updateTile
{
   // [[ self.tiles objectAtIndex:self.currentPoint.x objectAtIndex:self.currentPoint.y ]];
    
    //PATile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y]];
    PATile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y]; // a[0][1
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateApplication];
    self.storyLabel.text = tileModel.story;
    self.backgroundImage.image = tileModel.backgroundImage;
    self.healthLabel.text = [NSString stringWithFormat:@"%i",self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i",self.character.damage];
    self.armorLabel.text=self.character.armor.name;
    self.weaponLabel.text=self.character.weapon.name;
    
                             
    [self updateCharacterStatsForArmor:self.character.armor withWeapons:self.character.weapon withHealthEffect:self.character.health];
    [self updateTile];
    [self updateButtons];

//update button name

}

- (BOOL) tileExistsAtPoint:(CGPoint) point
{
    if (point.y >=0 && point.x >=0  && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x ]count]){
        return NO;// make sure the point is not <0 and x<arrray[i] y<array[i][j]
        
    }
    else{
        return YES;
        
    }
}

- (void) updateButtons
{
//    if([self.tileExistsAtPoint:self.currentPoint]){
//        self.view.hidden = True;
//    }

    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y+1)];
    
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
    [self updateTile];
   
    
}


- (void) updateCharacterStatsForArmor:(PAArmor *) armor withWeapons:(PAWeapon *)weapon withHealthEffect:(int) healEffect
{
    if( armor != nil){
        self.character.health = self.character.health - self.character.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
        
    }
    else if (healEffect !=0){
        self.character.health = self.character.health + healEffect;
        
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    PATile *tile = [[ self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    [self updateTile];
  
  

   
}

- (IBAction)northButtonPressed:(UIButton *)sender {
     self.currentPoint = CGPointMake(self.currentPoint.x,self.currentPoint.y+1);
     [self updateButtons];
    NSLog(@"current porint is %f %f  ",self.currentPoint.x,self.currentPoint.y);
   
    [self updateTile];
 
    
}

- (IBAction)westButtonPressed:(UIButton *)sender {
      self.currentPoint = CGPointMake(self.currentPoint.x-1,self.currentPoint.y);
     [self updateButtons];
    NSLog(@"current porint is %f %f  ",self.currentPoint.x,self.currentPoint.y);
   
        [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x,self.currentPoint.y-1);
     [self updateButtons];
    NSLog(@"current porint is %f %f  ",self.currentPoint.x,self.currentPoint.y);
    
        [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
     self.currentPoint = CGPointMake(self.currentPoint.x+1,self.currentPoint.y);
     [self updateButtons];
    NSLog(@"current porint is %f %f  ",self.currentPoint.x,self.currentPoint.y);
    
        [self updateTile];
}
@end
