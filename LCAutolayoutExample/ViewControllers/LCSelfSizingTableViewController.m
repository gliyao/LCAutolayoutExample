//
//  LCSelfSizingTableViewController.m
//  LCAutolayoutExample
//
//  Created by Liyao on 2015/11/8.
//  Copyright © 2015年 DCode. All rights reserved.
//

#import "LCSelfSizingTableViewController.h"
#import "LCCellTableViewCell.h"

@interface LCSelfSizingTableViewController ()
@property (strong, nonatomic) NSArray *news;
@end

static NSString * const kCellId = @"LCCellTableViewCell";

@implementation LCSelfSizingTableViewController

- (void)loadView
{
    [super loadView];
    
    self.news = @[@"frame = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadViewframe = {{0, 0}, {600, 600}}, loadView",
                  @"frame = {{0, 0}, {600, 600}}, loadView",
                  ];
    
    [self.tableView registerNib:[UINib nibWithNibName:kCellId bundle:nil] forCellReuseIdentifier:kCellId];
    
    // Self sizing cell
    self.tableView.estimatedRowHeight = 37.0;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.news.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LCCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellId forIndexPath:indexPath];
    cell.label.text = self.news[indexPath.row];
    return cell;
}

@end
