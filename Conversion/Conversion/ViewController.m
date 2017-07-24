//
//  ViewController.m
//  Conversion
//
//  Created by 王景欣 on 2017/7/24.
//  Copyright © 2017年 Oculus. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    __block ViewController *weakSelf = self;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(weakSelf.view).offset(100);
        make.left.equalTo(weakSelf.view).offset(30);
        make.right.equalTo(weakSelf.view).offset(-30);
        make.height.mas_equalTo(30);
    }];
    
    [btn addTarget:self action:@selector(buttonDidPress:) forControlEvents:UIControlEventTouchUpInside];

}

- (void)buttonDidPress:(UIButton *)sender {
 
    NextViewController *vc = [[NextViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
