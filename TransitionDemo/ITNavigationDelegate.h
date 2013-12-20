//
//  ITNavigationDelegate.h
//  TransitionDemo
//
//  Created by TZ on 13-12-20.
//  Copyright (c) 2013年 iTian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ITCornerTransition.h"

typedef enum {
    DelegateTypeSlash,
    DelegateTypeBackSlash
}DelegateType;

@interface ITNavigationDelegate : NSObject<UINavigationControllerDelegate>

@property (nonatomic) DelegateType delegateType;

@end
