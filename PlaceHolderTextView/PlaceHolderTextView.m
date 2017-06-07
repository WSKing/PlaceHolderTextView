//
//  PlaceHolderTextView.m
//  PlaceHolderTextView
//
//  Created by wsk on 17/6/7.
//  Copyright © 2017年 wsk. All rights reserved.
//

#import "PlaceHolderTextView.h"

@interface PlaceHolderTextView ()<UITextViewDelegate>
@property (nonatomic, strong) UILabel *placeLabel;
@end

@implementation PlaceHolderTextView


- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:nil];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self createPlaceHoder];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextDidChange:) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self createPlaceHoder];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextDidChange:) name:UITextViewTextDidChangeNotification object:nil];
}


- (void)createPlaceHoder {
    [self addSubview:self.placeLabel];
    
}

- (void)textViewTextDidChange:(NSNotification *)noty {
    if (self.text.length == 0) {
        self.placeLabel.alpha =1;
        self.placeLabel.text = self.placeHoderText;
    }else {
        self.placeLabel.alpha =0;
        self.placeLabel.text = nil;
    }
}





- (void)setPlaceHoderText:(NSString *)placeHoderText {
    _placeHoderText = placeHoderText;
    self.placeLabel.text = placeHoderText;
}

- (UILabel *)placeLabel {
    if (!_placeLabel) {
        _placeLabel = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, self.frame.size.width - 10, 20)];
        _placeLabel.text = self.placeHoderText;
        _placeLabel.font = [UIFont systemFontOfSize:self.font.pointSize - 3];
        _placeLabel.textColor = [UIColor lightGrayColor];
    }
    return _placeLabel;
}
@end
