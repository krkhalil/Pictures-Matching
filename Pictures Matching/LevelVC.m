//
//  LevelVC.m
//  Pictures Matching
//
//  Created by Macbook on 26/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "LevelVC.h"
#import "PlayVC.h"

@interface LevelVC ()

@end

@implementation LevelVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = false;
    self.navigationItem.title = @"Select Level";
   
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = false;
    self.navigationItem.title = @"Select Level";
}

- (IBAction)l1:(id)sender
{
    PlayVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"PlayVC"];
    v.level = @"1";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)l2:(id)sender
{
    PlayVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"PlayVC"];
    v.level = @"2";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)l3:(id)sender
{
    PlayVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"PlayVC"];
    v.level = @"3";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)l4:(id)sender
{
    PlayVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"PlayVC"];
    v.level = @"4";
    [self.navigationController pushViewController:v animated:YES];
}

- (IBAction)l5:(id)sender
{
    PlayVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"PlayVC"];
    v.level = @"5";
    [self.navigationController pushViewController:v animated:YES];
}


@end
