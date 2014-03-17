//
//  CTGViewController.m
//  Class Testing Groud
//
//  Created by yibeitech on 3/13/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "CTGViewController.h"
#import "MBFDog.h"

@interface CTGViewController ()

@end

@implementation CTGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSString *myString = @"The (newFoundland in its swimming prowess";
    NSArray *wordsInsentence = [myString componentsSeparatedByString:@" "];
    NSLog(@"%@",wordsInsentence);
    
    NSMutableArray *capitalizeWords = [[NSMutableArray alloc]init];
    NSMutableArray *capitalizeWordsN = [[NSMutableArray alloc]init];
    for (int word = 0; word < [wordsInsentence count]; word ++){
        NSString *unCap = wordsInsentence[word];
        NSString *cap = [unCap capitalizedString];
        [capitalizeWords addObject:cap];
        
    }
    
    for (NSString *word in wordsInsentence){
        NSString *newWord = [word capitalizedString];
        [capitalizeWordsN addObject:newWord];
        
    }
    NSLog(@"%@",capitalizeWords);
    NSLog(@"New For %@",capitalizeWordsN);
    
    
    MBFDog *dog = [[ MBFDog alloc] init];
    [dog  setNames:@"Sparky"];
    NSLog(@"dog's name %@",[dog name]);
    
    
    NSString *firstString = @"First STring";
    NSString *secondString = @"Second String";
    NSArray *myArray = [[NSArray alloc] initWithObjects:firstString,secondString, nil];
    NSLog(@"%@",myArray);
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    [myMutableArray addObject:(secondString)];
    [myMutableArray addObject:(firstString)];
 
    NSLog(@"%@",myMutableArray);
    
    NSArray *myEmbArray = [[NSArray alloc] initWithObjects:firstString,secondString,myMutableArray, nil];
    NSLog(@"%@",myEmbArray);
    
    NSArray *finalArray = [[NSArray alloc]init];
    //[finalArray initWithObjects:secondString,firstString,myEmbArray, nil];
    //[finalArray ]
    NSLog(@"%@",finalArray);
    
    CGPoint myPoint = CGPointMake(3,4);
    NSLog(@"%f %f",myPoint);
    
                                    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
