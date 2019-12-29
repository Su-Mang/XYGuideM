//
//  XYGuideManaer.m
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "XYGuideManaer.h"
 XYGuideManaer * manger = nil;
@implementation XYGuideManaer
+ (instancetype)Manager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manger = [[self alloc] init];
        [manger create];
    });
    return manger;
}
- (void)create {
      _HBUmap.n = 12;
       _HBUmap.e = 20;
    for (int i = 0; i < MaxVerNum; i++) {
        _HBUmap.vexs[i].num = i+1;
    }
    for (int i = 0; i < MaxVerNum; i++) {
        for ( int j = 0; j<MaxVerNum; j++) {
                _HBUmap.edges[i][j] = INFINITY;
        }
    }
    strcpy(   _HBUmap.vexs[0].name, "操场");
    strcpy(  _HBUmap.vexs[0].features, "跑一千米,打篮球的好地方");
    strcpy(   _HBUmap.vexs[1].name, "图书馆");
    strcpy(    _HBUmap.vexs[1].features, "进入需要使用学生卡，西邮在线微信公众号预约座位");
    strcpy(  _HBUmap.vexs[2].name, "大学生活动中心");
    strcpy(   _HBUmap.vexs[2].features, "谁能告诉我这个是干啥的？组织活动的？");
    strcpy(  _HBUmap.vexs[3].name, "校门北口");
    strcpy(   _HBUmap.vexs[3].features, "这个口不外卖进不来，共享单车也进不来。");
    strcpy(   _HBUmap.vexs[4].name, "银杏景观");
    strcpy(    _HBUmap.vexs[4].features, "大妈的乐园，情侣的天堂");
//    strcpy(   self.HBUmap.vexs[5].name, "邯郸音乐厅");
//    strcpy(    self.HBUmap.vexs[5].features, "一个团委举办大会的地方");
//    strcpy(   self.HBUmap.vexs[6].name, "餐厅");
//    strcpy(    self.HBUmap.vexs[6].features, "两层餐厅，想吃的差不多都有");
//    strcpy(    self.HBUmap.vexs[7].name, "花园景观");
//    strcpy(    self.HBUmap.vexs[7].features, "没有看到花，没有看到景");
//    strcpy(    self.HBUmap.vexs[8].name, "校门东口");
//    strcpy(    self.HBUmap.vexs[8].features, "从中间这个口进去就是东区。");
//    strcpy(   self.HBUmap.vexs[9].name, "逸夫教学楼");
//    strcpy(  self.HBUmap.vexs[9].features, "西安邮电最猛的教学楼");
//    strcpy(    self.HBUmap.vexs[10].name, "东升食堂");
//    strcpy(   self.HBUmap.vexs[10].features, "东区的食堂");
//    strcpy(    self.HBUmap.vexs[11].name, "家属区");
//    strcpy(    self.HBUmap.vexs[11].features, "学校家属区");
//      self.  self.HBUmap.edges[0][2] =   self.  self.HBUmap.edges[2][0] = 350;
//      self.HBUmap.edges[0][5] =   self.HBUmap.edges[5][0] = 480;
//      self.HBUmap.edges[0][1] =   self.HBUmap.edges[1][0] = 280;
//      self.HBUmap.edges[0][3] =   self.HBUmap.edges[3][0] = 200;
//      self.HBUmap.edges[3][4] =   self.HBUmap.edges[4][3] = 100;
//      self.HBUmap.edges[3][6] =   self.HBUmap.edges[6][3] = 100;
//      self.HBUmap.edges[4][6] =   self.HBUmap.edges[6][4] = 100;
//      self.HBUmap.edges[2][5] =   self.HBUmap.edges[5][2] = 200;
//      self.HBUmap.edges[1][5] =   self.HBUmap.edges[5][1] = 400;
//      self.HBUmap.edges[1][7] =   self.HBUmap.edges[7][1] = 160;
//      self.HBUmap.edges[1][8] =   self.HBUmap.edges[8][1] = 300;
//      self.HBUmap.edges[6][8] =   self.HBUmap.edges[8][6] = 100;
//      self.HBUmap.edges[5][9] =   self.HBUmap.edges[9][5] = 500;
//      self.HBUmap.edges[11][10] =   self.HBUmap.edges[10][11] = 400;
//      self.HBUmap.edges[11][9] =   self.HBUmap.edges[9][11] = 400;
//      self.HBUmap.edges[11][7] =   self.HBUmap.edges[7][11] = 500;
//      self.HBUmap.edges[11][8] =   self.HBUmap.edges[8][11] = 600;
//      self.HBUmap.edges[10][5] =   self.HBUmap.edges[5][10] = 500;
//      self.HBUmap.edges[9][7] =   self.HBUmap.edges[7][9] = 150;
//      self.HBUmap.edges[8][7] =   self.HBUmap.edges[7][8] = 200;
    
}

@end
