//
//  ViewController.m
//  PlaceHolderTextView
//
//  Created by wsk on 17/6/7.
//  Copyright © 2017年 wsk. All rights reserved.
//

#import "ViewController.h"
#import "PlaceHolderTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PlaceHolderTextView *textView = [[PlaceHolderTextView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 300)];
    textView.placeHoderText = @"我是placehoder...";
    textView.layer.borderWidth = 1;
    [self.view addSubview:textView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
