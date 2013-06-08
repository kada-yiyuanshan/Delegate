//
//  ViewController.h
//  Delegate
//
//  Created by near_shan on 13-6-8.
//  Copyright (c) 2013年 near_shan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIResponder_Delegate.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,Delegate>
{
    UITableView *tableview;
    UITableViewCell *tableviewcell;
    UILabel *count;
}

@property(retain,nonatomic) IBOutlet UILabel *count;
@property(retain,nonatomic) IBOutlet UITableViewCell *tableviewcell;
@property(retain,nonatomic) IBOutlet UITableView *tableview;

-(IBAction)jump:(id)sender;
@end
