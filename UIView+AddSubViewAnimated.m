//
//  UIView+AddSubViewAnimated.m
//  mFinoWallet
//
//  Created by Vishwa Deepak on 26/11/15.
//  Copyright © 2015 mFino. All rights reserved.
//

#import "UIView+AddSubViewAnimated.h"

@implementation UIView (AddSubViewAnimated)

- (void)addSubViewWithAnimation: (UIView *)subview
{
    [self addSubview:subview];
    
    subview.alpha = 0;
    [UIView animateWithDuration:0.37 animations:^{subview.alpha = 1.0;}];
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    bounceAnimation.values = @[@0.01f, @1.1f, @0.95f, @1.0f];
    bounceAnimation.keyTimes = @[@0.0f, @0.5f, @0.75f, @1.0f];
    bounceAnimation.duration = 0.37;
    [subview.layer addAnimation:bounceAnimation forKey:@"bounce"];
}

- (void)removeSubviewWithAnimation: (UIView *)subview
{
    subview.alpha = 1;
    [UIView animateWithDuration:0.37 animations:^{subview.alpha = 0.0;}];
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    bounceAnimation.values = @[@1.0f,@0.95f,@1.1f,@0.01f];
    bounceAnimation.keyTimes = @[@0.0f, @0.5f, @0.75f, @1.0f];
    bounceAnimation.duration = 0.37;
    [subview.layer addAnimation:bounceAnimation forKey:@"deBounce"];
    [subview removeFromSuperview];
}

@end
