#import "LCDynamicLableHeightViewController.h"

@interface LCDynamicLableHeightViewController ()
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UIButton *topButtom;
@end

@implementation LCDynamicLableHeightViewController

- (IBAction)clickButton:(id)sender
{
    self.topLabel.text = [self.topLabel.text stringByAppendingString:@"KKBOX KKBOX KKBOX"];
    
    NSString *doubleText = [self.topButtom.titleLabel.text stringByAppendingString:self.topButtom.titleLabel.text];
    [self.topButtom setTitle:doubleText forState:UIControlStateNormal];
}


@end
