//
//  ManagerDetailView.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ManagerDetailView.h"
#import <Masonry.h>
@implementation ManagerDetailView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _detailbutton = [[UIButton alloc] init];
        [self addSubview:_detailbutton];
        [_detailbutton setTitle:@"校园介绍" forState:UIControlStateNormal];
        _exitButton = [[UIButton alloc] init];
        [self addSubview:_exitButton];
        [_exitButton setTitle:@"退出" forState:UIControlStateNormal];
        _searchButton = [[UIButton alloc] init];
        [self addSubview:_searchButton];
        [_searchButton setTitle:@"当前位置到其它位置的最短路径" forState:UIControlStateNormal];
        _searchTwoButton = [[UIButton alloc] init];
        [_searchTwoButton setTitle:@"任意两个位置的最短路径" forState:UIControlStateNormal];
        [self addSubview:_searchTwoButton];
        _addroutbutton = [[UIButton alloc] init];
        [self addSubview:_addroutbutton];
        [_addroutbutton setTitle:@"增加道路" forState:UIControlStateNormal];
        _deleatButton = [[UIButton alloc] init];
        [self addSubview:_deleatButton];
        [_deleatButton setTitle:@"删除道路" forState:UIControlStateNormal];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [_detailbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(20);
        make.left.mas_equalTo(self).offset(100);
        make.right.mas_equalTo(self).offset(-100);
        make.height.mas_equalTo(100);
    }];
    [_searchButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.detailbutton).offset(120);
        make.left.mas_equalTo(self).offset(75);
        make.right.mas_equalTo(self).offset(-75);
        make.height.mas_equalTo(100);
    }];
    [_searchTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.searchButton).offset(120);
        make.left.mas_equalTo(self).offset(75);
        make.right.mas_equalTo(self).offset(-75);
        make.height.mas_equalTo(100);
    }];
    [_addroutbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.searchTwoButton).offset(120);
        make.left.mas_equalTo(self).offset(75);
        make.right.mas_equalTo(self).offset(-75);
        make.height.mas_equalTo(100);
    }];
    [_deleatButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.addroutbutton).offset(120);
        make.left.mas_equalTo(self).offset(75);
        make.right.mas_equalTo(self).offset(-75);
        make.height.mas_equalTo(100);
    }];
    [_exitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.deleatButton).offset(120);
        make.left.mas_equalTo(self).offset(75);
        make.right.mas_equalTo(self).offset(-75);
        make.height.mas_equalTo(100);
    }];
}
@end
