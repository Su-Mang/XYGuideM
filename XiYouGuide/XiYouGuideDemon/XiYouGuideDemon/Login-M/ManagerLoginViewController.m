//
//  ManagerLoginViewController.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ManagerLoginViewController.h"
#import "MangerDetailViewViewController.h"
@interface ManagerLoginViewController ()<UITextFieldDelegate>

@end

@implementation ManagerLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mangerloginView = [[MangerLoginView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_mangerloginView];
    _mangerloginView.accountTextField.delegate = self;
    _mangerloginView.passwordTextField.delegate = self;
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:0.5];
    [_mangerloginView.cancelButton addTarget:self action:@selector(exitButton) forControlEvents:UIControlEventTouchUpInside];
    [_mangerloginView.loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
}
-(void)login {
    if([_mangerloginView.accountTextField.text isEqualToString:@"123"]&&[_mangerloginView.passwordTextField.text isEqualToString:@"123"]) {
        MangerDetailViewViewController * view =[[MangerDetailViewViewController alloc]init];
        [self presentViewController:view animated:YES completion:nil];
        
    }else{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"老哥衷心提醒" message:@"密码或账号有误" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"说的是人话吗？" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        _mangerloginView.accountTextField.text = @"";
        _mangerloginView.passwordTextField.text = @"";
    }];
    [alert addAction:sure];
    [self presentViewController:alert animated:YES completion:nil];
    }
}
-(void)exitButton {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_mangerloginView.accountTextField resignFirstResponder];
    [_mangerloginView.passwordTextField resignFirstResponder];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_mangerloginView.accountTextField resignFirstResponder];
    [_mangerloginView.passwordTextField resignFirstResponder];
    return YES;
}
@end
