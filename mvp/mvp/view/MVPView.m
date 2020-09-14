//
//  MVPView.m
//  mvp
//
//  Created by sn on 2020/9/14.
//  Copyright © 2020 sn. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (nonatomic, strong)UILabel *label;

@end

@implementation MVPView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUI];
    }
    return self;
}

-(void)setUI{
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.label];
}

-(void)setModel:(MVPTestModel *)model{
    _model = model;
    self.label.text = model.text;
}

-(UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 20)];
        _label.backgroundColor = [UIColor redColor];
    }
    return _label;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
