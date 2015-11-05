#import "LCIntrinsicContentSizeViewController.h"

@interface LCIntrinsicContentSizeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UIButton *topButtom;
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

- (IBAction)clickButton:(id)sender
{
    self.topLabel.text = [self.topLabel.text stringByAppendingString:@"KKBOX KKBOX KKBOX"];
    
    NSString *doubleText = [self.topButtom.titleLabel.text stringByAppendingString:self.topButtom.titleLabel.text];
    [self.topButtom setTitle:doubleText forState:UIControlStateNormal];
}


@end
