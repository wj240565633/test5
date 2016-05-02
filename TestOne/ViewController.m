//
//  ViewController.m
//  TestOne
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "Custom.h"

@interface ViewController ()<CustomViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Custom *customView = [[Custom alloc] initWithFrame:self.view.bounds];
    customView.delegate = self;
    [self.view addSubview:customView];
}

- (void)sendchuanzhi:(UIButton *)btn
{
    NSLog(@"取消");
}

- (void)sendsureBtn:(UIButton *)sureBtn
{
    NSLog(@"确定");
}

- (void)searchClick
{
    NSLog(@"搜索");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
