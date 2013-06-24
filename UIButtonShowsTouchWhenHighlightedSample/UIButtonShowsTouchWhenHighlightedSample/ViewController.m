//
//  ViewController.m
//  UIButtonShowsTouchWhenHighlightedSample
//
//  Created by Dolice on 2013/06/24.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

#pragma mark private methods definition

@interface ViewController ()
- (UIButton *)buttonForThisSample;
@end

#pragma mark start implementation for methods

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setHighlightButton];
    [self setButton];
}

- (void)setHighlightButton
{
    //ハイライト指定のボタン定義
    UIButton *button1 = [self buttonForThisSample];
    button1.frame = CGRectMake(0, 0, 200, 60);
    button1.center = self.view.center;
    
    //ハイライト指定
    button1.showsTouchWhenHighlighted = YES;
    
    //画面に追加
    [self.view addSubview:button1];
}

- (void)setButton
{
    //通常ボタン定義
    UIButton *button2 = [self buttonForThisSample];
    button2.frame = CGRectMake(0, 0, 200, 60);
    CGPoint newPoint = self.view.center;
    newPoint.y += 96;
    button2.center = newPoint;
    
    //画面に追加
    [self.view addSubview:button2];
}

#pragma mark private methods

- (UIButton *)buttonForThisSample
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
        UIViewAutoresizingFlexibleRightMargin |
        UIViewAutoresizingFlexibleTopMargin |
        UIViewAutoresizingFlexibleBottomMargin;
    button.titleLabel.font = [UIFont boldSystemFontOfSize:24];
    [button setTitle:@"UIButton" forState:UIControlStateNormal];
    return button;
}

@end
