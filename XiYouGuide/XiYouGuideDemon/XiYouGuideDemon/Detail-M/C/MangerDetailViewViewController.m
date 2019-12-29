//
//  MangerDetailViewViewController.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "MangerDetailViewViewController.h"

@interface MangerDetailViewViewController ()

@end

@implementation MangerDetailViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _managerview  = [[ManagerDetailView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_managerview];
      self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:0.5];
    [_managerview.exitButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
}

-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
