//
//  VisitorDetailViewController.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "VisitorDetailViewController.h"

@interface VisitorDetailViewController ()

@end

@implementation VisitorDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _visitordetailView = [[VisitorDeatailView alloc] init];
    [_visitordetailView setFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_visitordetailView];
    [_visitordetailView.exitButton addTarget:self action:@selector(exitLast) forControlEvents:UIControlEventTouchUpInside];
    [_visitordetailView.detailButton addTarget:self action:@selector(showDetail) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:0.5];
}
-(void) showDetail {
      printf("%s:%s\n",[XYGuideManaer Manager].HBUmap.vexs[0].name,[XYGuideManaer Manager].HBUmap.vexs[0].features);
    
}
-(void)exitLast {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
