//
//  LCAutolayoutVFLViewController.m
//  LCAutolayoutExample
//
//  Created by Liyao on 2015/11/8.
//  Copyright © 2015年 DCode. All rights reserved.
//

#import "LCAutolayoutVFLViewController.h"

@interface LCAutolayoutVFLViewController ()

@end

@implementation LCAutolayoutVFLViewController

- (void)loadView
{
    [super loadView];
    UIView *redBox = [self _autolayoutViewWithColor:[UIColor redColor]];
    [self.view addSubview:redBox];
    
    // Simple constraints
//    NSArray *constraintsH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[redBox]-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redBox)];
//    NSArray *constraintsV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-84-[redBox(==200)]-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redBox)];
//    [self.view addConstraints:constraintsH];
//    [self.view addConstraints:constraintsV];
    
    UIView *blueBox = [self _autolayoutViewWithColor:[UIColor blueColor]];
    [self.view addSubview:blueBox];
    NSDictionary *viewDict = @{@"redBox": redBox, @"blueBox": blueBox};
    
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[redBox]-|" options:0 metrics:nil views:viewDict]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[blueBox]-|" options:0 metrics:nil views:viewDict]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-84-[redBox(==200)]-20-[blueBox(==100)]" options:0 metrics:nil views:viewDict]];
}

- (UIView *)_autolayoutViewWithColor:(UIColor *)color
{
    UIView *view = [UIView new];
    view.backgroundColor = color;
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

@end
