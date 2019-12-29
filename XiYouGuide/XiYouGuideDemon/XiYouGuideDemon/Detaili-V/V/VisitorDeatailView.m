//
//  VisitorDeatailView.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "VisitorDeatailView.h"
#import <Masonry.h>
@implementation VisitorDeatailView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _detailButton = [[UIButton alloc] init];
        [self addSubview:_detailButton];
        [_detailButton setTitle:@"景点详情" forState:UIControlStateNormal];
        [_detailButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(200);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-100);
            make.height.mas_equalTo(150);
        }];
        _searchButton = [[UIButton alloc] init];
        [self addSubview:_searchButton];
        [_searchButton  setTitle:@"当前位置到其它位置的最短路径" forState:UIControlStateNormal];
        [_searchButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.detailButton).offset(150);
            make.left.mas_equalTo(self).offset(75);
            make.right.mas_equalTo(self).offset(-75);
            make.height.mas_equalTo(150);
        }];
        _searchTwoButton = [[UIButton alloc] init];
        [self addSubview:_searchTwoButton];
        [_searchTwoButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.searchButton).offset(150);
            make.left.mas_equalTo(self).offset(75);
            make.right.mas_equalTo(self).offset(-75);
            make.height.mas_equalTo(150);
        }];
        [_searchTwoButton setTitle:@"任意两个位置的最短路径" forState:UIControlStateNormal];
        _exitButton = [[UIButton alloc] init];
        [self addSubview:_exitButton];
        [_exitButton setTitle:@"退出" forState:UIControlStateNormal];
        [_exitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.searchTwoButton).offset(150);
            make.left.mas_equalTo(self).offset(75);
            make.right.mas_equalTo(self).offset(-75);
            make.height.mas_equalTo(150);
        }];
    }
    return self;
}


@end
