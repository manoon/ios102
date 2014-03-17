//
//  YBViewController.m
//  MyFirstApplication
//
//  Created by yibeitech on 3/8/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "YBViewController.h"

@interface YBViewController ()

@end

@implementation YBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
   // self.titleLabel.text = @"Hello Class";
    self.titleLabel.text = self.textField.text;
    //self.titleLabel.text = @"Hey Man";
    [self.textField resignFirstResponder]; //keyborad go away when pressed
}

@end
