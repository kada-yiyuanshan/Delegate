//
//  SecondView.m
//  Delegate
//
//  Created by near_shan on 13-6-8.
//  Copyright (c) 2013年 near_shan. All rights reserved.
//

#import "SecondView.h"

@interface SecondView ()

@end

@implementation SecondView

@synthesize array,delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)dealloc
{
    [array release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    array = [[NSMutableArray alloc] initWithObjects:@"a",@"b",@"c",@"d",@"e",nil];
}
-(IBAction)back:(id)sender
{
    
    [delegate arraycount:[NSString stringWithFormat:@"%d",[array count]]];
    [self dismissModalViewControllerAnimated:YES];
}
-(IBAction)addcount:(id)sender
{
    [self add];
    NSLog(@"count=%d",[array count]);
    for (NSString *str in array) {
        NSLog(@"str==>%@",str);
    }
    
}
-(void)add
{
    if ([array count]>0) {
       [self.array removeObjectAtIndex:0];
    }else
    {
        NSLog(@"nil");
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
