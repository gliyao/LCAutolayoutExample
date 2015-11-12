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

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder]){
        
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor blackColor];
    self.label.text = @"";
    self.label.textColor = [UIColor whiteColor];
    self.label.numberOfLines = 0;
    
    self.label.text = [NSString stringWithFormat:@"loadView f = %@", NSStringFromCGRect(self.view.frame)];
    NSLog(@"%@", [NSString stringWithFormat:@"loadView f = %@", NSStringFromCGRect(self.view.frame)]);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewDidLoad f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
    NSLog(@"%@",[NSString stringWithFormat:@"viewDidLoad f = %@", NSStringFromCGRect(self.view.frame)]);
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewWillAppear f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
    NSLog(@"%@", [NSString stringWithFormat:@"viewWillAppear f = %@", NSStringFromCGRect(self.view.frame)]);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewDidAppear f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
    NSLog(@"%@", [NSString stringWithFormat:@"viewDidAppear f = %@", NSStringFromCGRect(self.view.frame)]);
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    self.label.text = [NSString stringWithFormat:@"%@ \nupdateViewConstraints f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
    NSLog(@"%@", [NSString stringWithFormat:@"updateViewConstraints f = %@", NSStringFromCGRect(self.view.frame)]);
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.label.text = [NSString stringWithFormat:@"%@ \nviewDidLayoutSubviews f = %@", self.label.text, NSStringFromCGRect(self.view.frame)];
    NSLog(@"%@", [NSString stringWithFormat:@"viewDidLayoutSubviews f = %@", NSStringFromCGRect(self.view.frame)]);
}

@end
