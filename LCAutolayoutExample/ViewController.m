#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init
{
    if(self = [super initWithNibName:NSStringFromClass([self class]) bundle:nil]){
        self.view.frame = [UIScreen mainScreen].applicationFrame;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder]){
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    NSLog(@"frame = %@, function = %s", NSStringFromCGRect(self.view.frame), __PRETTY_FUNCTION__);
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"frame = %@, function = %s", NSStringFromCGRect(self.view.frame), __PRETTY_FUNCTION__);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"frame = %@, function = %s", NSStringFromCGRect(self.view.frame), __PRETTY_FUNCTION__);
}

- (IBAction)openVC:(id)sender
{
    ViewController *vc = [[ViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
