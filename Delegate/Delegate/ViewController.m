//
//  ViewController.m
//  Delegate
//
//  Created by near_shan on 13-6-8.
//  Copyright (c) 2013年 near_shan. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableview,tableviewcell;
@synthesize count;

-(void)dealloc
{
    [count release];
    [tableviewcell release];
    [tableview release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)jump:(id)sender
{
    SecondView *secondview=[[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
    secondview.delegate=self;
    [self presentModalViewController:secondview animated:YES];
}

-(void)arraycount:(NSString *)cou
{
    count.text=cou;
}

# pragma tableview delegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString  *TableSampleIdentifier=@"TableSampleIdentifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:TableSampleIdentifier];
    
    if(cell==nil)
    {
        cell=[[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:TableSampleIdentifier] autorelease];
    }
    tableviewcell.selectionStyle = UITableViewCellSelectionStyleGray;
    cell=tableviewcell;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    return 70;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
