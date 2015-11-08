#import "LCExampleListViewController.h"

@interface LCExampleListViewController ()
@property (strong, nonatomic) NSArray *viewControllers;
@end

@implementation LCExampleListViewController

- (void)loadView
{
    [super loadView];
    
    self.viewControllers = @[
                             @[@"LCFrameLikeAutoLayoutController", @"LCResponsiveAutoLayoutViewController", @"LCLaunchScreenViewController"],
                             @[@"LCIntrinsicContentSizeExplanationViewController", @"LCDynamicLableHeightViewController", @"LCIntrinsicContentSizeViewController"],
                             @[@"LCAutolayoutLifecycleViewController", @"LCSelfSizingTableViewController", @"LCAutolayoutAnimationViewController", @"LCAutolayoutConstraintsWithCodeViewController", @"LCAutolayoutVFLViewController"]
                             ];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSString *className = self.viewControllers[indexPath.section][indexPath.row];
    Class c = NSClassFromString(className);
    UIViewController *vc = [[c alloc] initWithNibName:className bundle:nil];
    vc.title = className;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
