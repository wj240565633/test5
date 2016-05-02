//
//  Custom.m
//  TestOne
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "Custom.h"

@interface Custom ()<UISearchBarDelegate>

@property (nonatomic, strong) UIButton *cancleBtn;
@property (nonatomic, strong) UIButton *sureBtn;

@end

@implementation Custom


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createCustomView];
    }
    return self;
}

- (void)createCustomView
{
    self.sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.sureBtn.frame = CGRectMake(20, 50, 100, 100);
    [self.sureBtn setTitle:@"确定" forState:UIControlStateNormal];
    [self.sureBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.sureBtn addTarget:self action:@selector(surebuttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.sureBtn];
    
    self.cancleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.cancleBtn.frame = CGRectMake(140, 50, 100, 100);
    [self.cancleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.cancleBtn setTitle:@"取消" forState:UIControlStateNormal];
    [self.cancleBtn addTarget:self action:@selector(canclebuttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.cancleBtn];
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(50, 150, self.bounds.size.width - 100, 50)];
    searchBar.searchBarStyle = UISearchBarStyleMinimal;
    searchBar.delegate = self;
    [self addSubview:searchBar];
}


- (void)surebuttonAction
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(sendsureBtn:)]) {
        [self.delegate sendsureBtn:self.sureBtn];
    }
}

- (void)canclebuttonAction
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(sendchuanzhi:)]) {
        [self.delegate sendchuanzhi:self.cancleBtn];
    }
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(searchClick)]) {
        [self.delegate searchClick];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
