//
//  LoginViewController.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "LoginViewController.h"
#import "VisitorDetailViewController.h"
#import "ManagerLoginViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _VisiterView = [[VisiterVIew alloc]init];
    [_VisiterView setFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_VisiterView];
    [_VisiterView.visiterButton addTarget:self action:@selector(visitdetail) forControlEvents:UIControlEventTouchUpInside];
    [_VisiterView.managerButton addTarget:self action:@selector(managerLogin) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:0.5];
}

-(void)visitdetail {
    VisitorDetailViewController * visitDetailController = [[VisitorDetailViewController alloc] init];
    [self presentViewController:visitDetailController animated:YES completion:nil];
}
-(void)managerLogin {
    ManagerLoginViewController * managerViewController = [[ManagerLoginViewController alloc] init];
    [self presentViewController:managerViewController animated:YES completion:nil];
}
@end
