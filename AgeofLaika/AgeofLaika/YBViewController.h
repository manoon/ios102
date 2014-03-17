//
//  YBViewController.h
//  AgeofLaika
//
//  Created by yibeitech on 3/9/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YBViewController : UIViewController
- (IBAction)btnCaculate:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *ageOfHuman;
@property (strong, nonatomic) IBOutlet UILabel *ageOfDog;

@end
