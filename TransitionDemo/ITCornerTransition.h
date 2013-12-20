//
//  ITCornerTransition.h
//  TransitionDemo
//
//  Created by TZ on 13-12-20.
//  Copyright (c) 2013年 iTian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    typeLeftBottomToRightTop,
    typeRightTopToLeftBottom,
    typeRightBottomToLeftTop,
    typeLeftTopToRightBottom
} Type;

@interface ITCornerTransition : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic) NSTimeInterval duration;
@property (nonatomic) Type type;

- (id)initWithDuration:(NSTimeInterval) duration type:(Type) type;

@end
