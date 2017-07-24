//
//  NextViewController.m
//  Conversion
//
//  Created by 王景欣 on 2017/7/24.
//  Copyright © 2017年 Oculus. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self.view addSubview:self.imageView];
}

- (UIImageView *)imageView {
    
    if (_imageView == nil) {

        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
        _imageView.layer.masksToBounds = YES;
        _imageView.backgroundColor =[UIColor greenColor];
        _imageView.image = [UIImage imageNamed:@"image.jpg"];
    }
    return _imageView;
}

/**屏幕翻转后width和height互换*/
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    _imageView.frame = CGRectMake(0, 0, size.width, size.height);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
