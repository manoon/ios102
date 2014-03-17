//
//  YBViewController.h
//  Funky Unit Converter
//
//  Created by yibeitech on 3/8/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YBViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *numberOfFootballLabel;
@property (strong, nonatomic) IBOutlet UITextField *numberOfFootballTextfield;
- (IBAction)covertUnit:(UIButton *)sender;

@end
