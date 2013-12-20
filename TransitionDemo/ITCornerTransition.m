//
//  ITCornerTransition.m
//  TransitionDemo
//
//  Created by TZ on 13-12-20.
//  Copyright (c) 2013年 iTian. All rights reserved.
//

#import "ITCornerTransition.h"

@interface ITCornerTransition ()

@property (nonatomic) CGRect toBeganFrame;
@property (nonatomic) CGRect fromEndFrame;


@end

@implementation ITCornerTransition

- (id)initWithDuration:(NSTimeInterval) duration type:(Type) type
{
    self = [super init];
    if (self) {
        self.type = type;
        self.duration = duration;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return self.duration;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *contrainerView = [transitionContext containerView];
    
    if (self.type == typeLeftBottomToRightTop) {
        CGRect frame = contrainerView.frame;
        frame.origin.x = -frame.size.width;
        frame.origin.y = frame.size.height;
        self.toBeganFrame = frame;
        
        frame = contrainerView.frame;
        frame.origin.x = frame.size.width;
        frame.origin.y = - frame.size.height;
        self.fromEndFrame = frame;
    }else if(self.type == typeRightTopToLeftBottom) {
        CGRect frame = contrainerView.frame;
        frame.origin.x = frame.size.width;
        frame.origin.y = -frame.size.height;
        self.toBeganFrame = frame;
        
        frame = contrainerView.frame;
        frame.origin.x = -frame.size.width;
        frame.origin.y = frame.size.height;
        self.fromEndFrame = frame;
    }else if(self.type == typeRightBottomToLeftTop) {
        CGRect frame = contrainerView.frame;
        frame.origin.x = frame.size.width;
        frame.origin.y = frame.size.height;
        self.toBeganFrame = frame;
        
        frame = contrainerView.frame;
        frame.origin.x = -frame.size.width;
        frame.origin.y = -frame.size.height;
        self.fromEndFrame = frame;
    }else if(self.type == typeLeftTopToRightBottom) {
        CGRect frame = contrainerView.frame;
        frame.origin.x = -frame.size.width;
        frame.origin.y = -frame.size.height;
        self.toBeganFrame = frame;
        
        frame = contrainerView.frame;
        frame.origin.x = frame.size.width;
        frame.origin.y = frame.size.height;
        self.fromEndFrame = frame;
    }
    toVC.view.frame = self.toBeganFrame;
    [contrainerView addSubview:toVC.view];
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromVC.view.frame = self.fromEndFrame;
        toVC.view.frame = contrainerView.frame;
    } completion:^(BOOL finished) {
        [fromVC.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}

@end
