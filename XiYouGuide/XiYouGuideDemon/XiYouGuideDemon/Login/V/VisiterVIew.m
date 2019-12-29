//
//  VisiterVIew.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "VisiterVIew.h"
#import <Masonry.h>
@implementation VisiterVIew
- (instancetype)init
{
    self = [super init];
    if (self) {
        _visiterButton = [[UIButton alloc] init];
        [self addSubview:_visiterButton];
        [_visiterButton setTitle:@"Visitor" forState:UIControlStateNormal];
        [_visiterButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(300);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(50);
            make.width.mas_equalTo(100);
        }];
        _managerButton = [[UIButton alloc] init];
        [self addSubview:_managerButton];
        [_managerButton setTitle:@"Manager" forState:UIControlStateNormal];
        [_managerButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.visiterButton).offset(150);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(50);
            make.width.mas_equalTo(100);
        }];
    }
    return self;
}
@end
