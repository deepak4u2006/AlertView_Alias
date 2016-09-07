//
//  UIView+AddSubViewAnimated.h
//  mFinoWallet
//
//  Created by Vishwa Deepak on 26/11/15.
//  Copyright © 2015 mFino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AddSubViewAnimated)

- (void)addSubViewWithAnimation: (UIView *)subview;
- (void)removeSubviewWithAnimation: (UIView *)subview;

@end
