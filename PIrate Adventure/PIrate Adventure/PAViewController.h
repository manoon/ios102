//
//  PAViewController.h
//  PIrate Adventure
//
//  Created by yibeitech on 3/15/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PACharacter.h"
#import "PABoss.h"

@interface PAViewController : UIViewController

//iVars

@property (nonatomic) CGPoint currentPoint;
@property (strong,nonatomic) NSArray *tiles;
@property (strong,nonatomic) PACharacter *character;
@property (strong,nonatomic) PABoss *boss;



//IBOutlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

//IBActions
- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;

@end
