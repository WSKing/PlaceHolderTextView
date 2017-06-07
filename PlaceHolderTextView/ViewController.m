//
//  ViewController.m
//  PlaceHolderTextView
//
//  Created by wsk on 17/6/7.
//  Copyright © 2017年 wsk. All rights reserved.
//

#import "ViewController.h"
#import "PlaceHolderTextView.h"
@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PlaceHolderTextView *textView = [[PlaceHolderTextView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300)];
    textView.placeHoderText = @"我是placehoder...";
    textView.layer.borderWidth = 1;
    textView.delegate = self;
    [self.view addSubview:textView];

}

- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"%@",textView.text);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
