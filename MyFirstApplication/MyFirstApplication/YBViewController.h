//
//  YBViewController.h
//  MyFirstApplication
//
//  Created by yibeitech on 3/8/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YBViewController : UIViewController

//@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
//- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)buttonPressed:(UIButton *)sender;

@end
