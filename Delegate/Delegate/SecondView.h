//
//  SecondView.h
//  Delegate
//
//  Created by near_shan on 13-6-8.
//  Copyright (c) 2013年 near_shan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIResponder_Delegate.h"

@interface SecondView : UIViewController
{
    NSMutableArray *array;
    id<Delegate> delegate;
}

@property(retain,nonatomic) NSMutableArray *array;
@property(assign,nonatomic) id<Delegate> delegate;

-(IBAction)back:(id)sender;
-(IBAction)addcount:(id)sender;
@end
