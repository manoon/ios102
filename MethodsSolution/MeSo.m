//
//  MeSo.m
//  MethodsSolution
//
//  Created by yibeitech on 3/12/14.
//  Copyright (c) 2014 yibeitech. All rights reserved.
//

#import "MeSo.h"

@implementation MeSo

-(void)makeItLess:(int)edge
{
    for ( int i = edge; i >= 1 ; i --){
        NSLog(@"The Value now is %d", i);
    }
}

-(void)makeItLess:(int) starter end: (int) ender
{
    
    for (int i=ender; i >= starter; i--)
    {
        NSLog(@"The Value now is %d",i);
    }
}
@end
