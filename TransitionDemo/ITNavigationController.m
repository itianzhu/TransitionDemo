//
//  ITNavigationController.m
//  TransitionDemo
//
//  Created by TZ on 13-12-20.
//  Copyright (c) 2013年 iTian. All rights reserved.
//

#import "ITNavigationController.h"
#import "ITNavigationDelegate.h"

@interface ITNavigationController ()
@property (nonatomic,strong) id<UINavigationControllerDelegate> navDelegate;
@end

@implementation ITNavigationController

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
	// Do any additional setup after loading the view.
    self.navDelegate = [[ITNavigationDelegate alloc] init];
    ((ITNavigationDelegate*)self.navDelegate).delegateType = DelegateTypeBackSlash;
    self.delegate = self.navDelegate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
