//
//  YBViewController.h
//  Man's Best Friend
//
//  Created by yibeitech on 3/10/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YBViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *ageOfDog;
@property (strong, nonatomic) IBOutlet UILabel *realAgeOfDog;
@property (strong, nonatomic) IBOutlet UITextField *ageOfHuman;
- (IBAction)btnRealDogAge:(UIButton *)sender;

- (IBAction)btnDogAge:(UIButton *)sender;
@end
