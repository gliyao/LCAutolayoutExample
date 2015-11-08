//
//  LCAutolayoutLifecycleViewController.m
//  LCAutolayoutExample
//
//  Created by Liyao on 2015/11/8.
//  Copyright © 2015年 DCode. All rights reserved.
//

#import "LCAutolayoutLifecycleViewController.h"

@interface LCAutolayoutLifecycleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation LCAutolayoutLifecycleViewController

- (void)loadView
{
    [super loadView];
    self.label.text = @"";
    self.label.textColor = [UIColor whiteColor];
    
    self.label.text = [NSString stringWithFormat:@"loadView f = %@", NSStringFromCGRect(self.view.frame)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewDidLoad f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewWillApear f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewDidApear f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    self.label.text = [NSString stringWithFormat:@"%@ \nupdateViewConstrainsts f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewDidLayoutSuviews f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
}

@end
