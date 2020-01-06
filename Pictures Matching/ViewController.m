//
//  ViewController.m
//  Pictures Matching
//
//  Created by Macbook on 26/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "LevelVC.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.navigationController.navigationBar.hidden = true;
}


- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = true;
}


- (IBAction)play:(id)sender
{
    LevelVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"LevelVC"];
    [self.navigationController pushViewController:v animated:YES];
}


@end
