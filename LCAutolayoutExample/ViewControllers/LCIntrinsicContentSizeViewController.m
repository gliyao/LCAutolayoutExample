#import "LCIntrinsicContentSizeViewController.h"

@interface LCIntrinsicContentSizeViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *emailLabelWidth;

@end

@implementation LCIntrinsicContentSizeViewController

- (void)loadView
{
    [super loadView];
    
    // Calculate max width of email label
    CGFloat kPadding = 20;
    CGFloat maxWidth = (CGRectGetWidth([UIScreen mainScreen].bounds) - kPadding)/2;
    self.emailLabelWidth.constant = maxWidth;
}

@end
