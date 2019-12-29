//
//  MangerLoginView.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "MangerLoginView.h"
#import <Masonry.h>
@implementation MangerLoginView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _accountTextField = [[UITextField alloc] init];
        [self addSubview:_accountTextField];
        [_accountTextField setPlaceholder:@"请输入帐号"];
        [_accountTextField setBackgroundColor:[UIColor whiteColor]];
        _passwordTextField  = [[UITextField alloc] init];
        [self addSubview:_passwordTextField];
        [_passwordTextField setPlaceholder:@"请输入密码"];
        [_passwordTextField setBackgroundColor:[UIColor whiteColor]];
        _loginButton = [[UIButton alloc] init];
        [self addSubview:_loginButton];
        [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
        _cancelButton = [[UIButton alloc] init];
        [_cancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [self addSubview:_cancelButton];
        [_accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self).offset(250);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-100);
            make.height.mas_equalTo(50);
        }];
        [_passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.accountTextField).offset(150);
            make.left.mas_equalTo(self).offset(100);
            make.right.mas_equalTo(self).offset(-100);
            make.height.mas_equalTo(50);
            _passwordTextField.secureTextEntry = YES;
        }];
        [_loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.passwordTextField).offset(150);
            make.left.mas_equalTo(self).offset(100);
            make.width.mas_equalTo(80);
           make.height.mas_equalTo(100);
        }];
        [_cancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.passwordTextField).offset(150);
            make.left.mas_equalTo(self.loginButton).offset(100);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(100);
        }];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
   
   
    
}

@end
