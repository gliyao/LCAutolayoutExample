//
//  LCAutolayoutConstraintsWithCodeViewController.m
//  LCAutolayoutExample
//
//  Created by Liyao on 2015/11/8.
//  Copyright © 2015年 DCode. All rights reserved.
//

#import "LCAutolayoutConstraintsWithCodeViewController.h"

@interface LCAutolayoutConstraintsWithCodeViewController ()

@end

@implementation LCAutolayoutConstraintsWithCodeViewController

- (void)loadView
{
    [super loadView];
    
    UIView *blueBox = [UIView new];
    blueBox.translatesAutoresizingMaskIntoConstraints = NO; // 一定要加..
    blueBox.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueBox];
    
    
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:blueBox attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:84];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:blueBox attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:blueBox attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-20];
    NSLayoutConstraint *equalHeight = [NSLayoutConstraint constraintWithItem:blueBox attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:200];
    
    [self.view addConstraints:@[top, left, right,  equalHeight]];
}

@end
