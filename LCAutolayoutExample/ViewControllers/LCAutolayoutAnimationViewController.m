//
//  LCAutolayoutAnimationViewController.m
//  LCAutolayoutExample
//
//  Created by Liyao on 2015/11/8.
//  Copyright © 2015年 DCode. All rights reserved.
//

#import "LCAutolayoutAnimationViewController.h"

@interface LCAutolayoutAnimationViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueBoxView;
@property (weak, nonatomic) IBOutlet UIView *redBox;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueBoxWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redBoxWidth;
@end

@implementation LCAutolayoutAnimationViewController

- (IBAction)addWidthAction:(id)sender
{
    self.blueBoxWidth.constant = self.blueBoxWidth.constant + 20;
}

- (IBAction)addWidthWithAnimation:(id)sender
{
    self.blueBoxWidth.constant = self.blueBoxWidth.constant + 20;
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (IBAction)addWidthWithRedBoxAnimation:(id)sender
{
    self.redBoxWidth.constant = self.redBoxWidth.constant + 20;
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        self.blueBoxWidth.constant = self.blueBoxWidth.constant + 20;
    }];
}

@end
