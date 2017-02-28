//
//  ViewController.m
//  Hypnosister
//
//  Created by 路丽菲 on 17/2/20.
//  Copyright © 2017年 路丽菲. All rights reserved.
//

#import "ViewController.h"
#import "BNRHypnosisView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    self.view = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    
//    // 创建两个CGRect结构分别作为UIScrollView对象和BNRHypnosisView对象的frame
//    CGRect screenRect = self.view.bounds;
//    CGRect bigRect = screenRect;
//    bigRect.size.width *= 2.0;
////    bigRect.size.height *= 2.0;
//    
//    // 创建一个UIScrollView对象，将其尺寸设置为窗口大小
//    UIScrollView * scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
//    [self.view addSubview:scrollView];
//    // 创建一个有着超大尺寸的BNRHypnosisView对象并将其加入UIScrollView对象
////    BNRHypnosisView * hypnosisView = [[BNRHypnosisView alloc]initWithFrame:bigRect];
////    [scrollView addSubview:hypnosisView];
//    
//    // 创建一个大小与屏幕相同的BNRHypnosisView对象并将其加入UIScrollView对象
//    BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc]initWithFrame:screenRect];
//    [scrollView addSubview:hypnosisView];
//
//    // 创建第二个大小与屏幕相同的BNRHypnosisView对象并放置在第一个BNRHypnosisView
//    // 对象的右侧，使其刚好移出屏幕外
//    screenRect.origin.x += screenRect.size.width;
//    BNRHypnosisView *anotherView = [[BNRHypnosisView alloc]initWithFrame:screenRect];
//    [scrollView addSubview:anotherView];
//    
//    
//    // 告诉UIScrollView对象"取景"范围有多大
//    scrollView.contentSize = bigRect.size;
//    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
//    CGRect firstFrame = CGRectMake(160, 240, 100, 150);
    CGRect firstFrame = self.view.bounds;
    
    BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
//    firstView.backgroundColor = [UIColor redColor];
    [self.view addSubview:firstView];
    
//    CGRect secondFrame = CGRectMake(20, 30, 50, 50);
//    BNRHypnosisView *secondView = [[BNRHypnosisView alloc] initWithFrame:secondFrame];
//    secondView.backgroundColor = [UIColor blueColor];
//    
//    //主页添加蓝色矩形
//    [self.view addSubview:secondView];
    //红矩形里添加蓝矩形
    //[firstView addSubview:secondView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
