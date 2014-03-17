//
//  MDViewController.h
//  MutilDog
//
//  Created by yibeitech on 3/13/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *dogName;
@property (strong, nonatomic) IBOutlet UILabel *dogBreed;
- (IBAction)btnShowDog:(id)sender;
@property (strong,nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int curIndex;


@end
