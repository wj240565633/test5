//
//  Custom.h
//  TestOne
//
//  Created by apple on 16/3/17.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate <NSObject>

@optional

- (void)sendchuanzhi:(UIButton *)btn;

- (void)sendsureBtn:(UIButton *)sureBtn;

- (void)searchClick;

@end

@interface Custom : UIView

@property (nonatomic, assign) id<CustomViewDelegate> delegate;


@end
