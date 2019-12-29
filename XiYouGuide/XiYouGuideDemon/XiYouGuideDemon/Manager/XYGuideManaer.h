//
//  XYGuideManaer.h
//  XiYouGuideDemon
//
//  Created by 岳靖翔 on 2019/12/28.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MaxVerNum 100
#define MaxNameLength 100
#define MaxDiscrabeLength 1000
#define PASSWORDLENGTH 20
#define INFINITY 1000000
#define DELAY 982337369
#define CONFIRMATION "QUEREN"
#define True 1
#define False 0
NS_ASSUME_NONNULL_BEGIN

@interface XYGuideManaer : NSObject
typedef struct {
    int num;
    char name[MaxNameLength];
    char features[MaxDiscrabeLength];
}VertexType;//节点类型

typedef int EdgeType;// 边缘类型

typedef struct {
    VertexType vexs[MaxVerNum];
    EdgeType edges[MaxVerNum][MaxVerNum];
    int n;
    int e;
}MGraph;// 图类型
@property MGraph  HBUmap;
+(instancetype)Manager;
-(void)showInfo;//输出所有景点
-(void) Visiter;//游客系统
-(void) Administrator;//管理员系统
-(void) introduct:(int) n;//景点介绍
-(void) Dijkstra;//查找游客所在景点与其他景点的距离
-(void) Floyd;//查找游客指定的两个景点间的最短路径长度
-(void)modifyInfo;//修改景点信息
-(void) addInfo;//添加景点
-(void) delInfo;//删除景点
-(void) addPath;//添加道路
-(void) delPath;//删除道路
-(void) showInfo;//展示面板
-(void) create;//生成图

@end

NS_ASSUME_NONNULL_END
