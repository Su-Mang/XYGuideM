//
//  ViewController.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView * backview = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:backview];
    [backview setImage:[UIImage imageNamed:@"1577518329332.jpeg"]];
   [self performSelector:@selector(nextView) withObject:self afterDelay:1];
}
- (void)nextView {
     LoginViewController *loginViewController = [[LoginViewController alloc] init];
    [self presentViewController:loginViewController animated:NO completion:nil];
}
@end
