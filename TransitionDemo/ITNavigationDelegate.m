//
//  ITNavigationDelegate.m
//  TransitionDemo
//
//  Created by TZ on 13-12-20.
//  Copyright (c) 2013年 iTian. All rights reserved.
//

#import "ITNavigationDelegate.h"


@implementation ITNavigationDelegate

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
{
    ITCornerTransition *ct = nil;
    if (operation == UINavigationControllerOperationPop) {
        if (self.delegateType == DelegateTypeSlash) {
            ct = [[ITCornerTransition alloc] initWithDuration:1 type:typeLeftTopToRightBottom];
        }else{
            ct = [[ITCornerTransition alloc] initWithDuration:1 type:typeLeftBottomToRightTop];
        }
    }else{
        if (self.delegateType == DelegateTypeSlash) {
            ct = [[ITCornerTransition alloc] initWithDuration:1 type:typeRightBottomToLeftTop];
        }else{
            ct = [[ITCornerTransition alloc] initWithDuration:1 type:typeRightTopToLeftBottom];
        }
    }
    return ct;
}

@end
