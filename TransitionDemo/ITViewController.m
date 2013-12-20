//
//  ITViewController.m
//  TransitionDemo
//
//  Created by TZ on 13-12-20.
//  Copyright (c) 2013年 iTian. All rights reserved.
//

#import "ITViewController.h"

static int cc = 0;

@interface ITViewController ()

@end

@implementation ITViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (cc % 2) {
        [self.view setBackgroundColor:[UIColor orangeColor]];
    }else{
        [self.view setBackgroundColor:[UIColor blueColor]];
    }
    cc += 1;
    
	
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [button setFrame:CGRectMake(100, 100, 50, 50)];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
}

- (void)push
{
    ITViewController *vc = [[ITViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
