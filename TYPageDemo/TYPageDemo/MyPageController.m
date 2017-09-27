//
//  MyPageController.m
//  TYPageDemo
//
//  Created by meng li on 2017/9/27.
//  Copyright © 2017年 meng li. All rights reserved.
//

#import "MyPageController.h"
#import "NewViewController.h"
#import "PageViewController.h"

@interface MyPageController () <TYTabPagerControllerDataSource,TYTabPagerControllerDelegate>

@end

@implementation MyPageController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setNav];
}

- (void)setNav{
    self.dataSource = self;
    self.delegate = self;

    self.tabBar.layout.barStyle = TYPagerBarStyleProgressView;
    self.tabBar.layout.adjustContentCellsCenter = YES;
    
    self.tabBar.layout.normalTextColor = [UIColor blackColor];
    self.tabBar.layout.selectedTextColor = [UIColor redColor];
    
    self.tabBar.layout.normalTextFont = [UIFont systemFontOfSize:15];
    self.tabBar.layout.selectedTextFont = [UIFont boldSystemFontOfSize:15];
    
    self.tabBar.progressView.backgroundColor = [UIColor redColor];
    self.tabBar.layout.cellEdging = 10;
    self.tabBar.layout.progressHorEdging = 1;
    self.tabBar.layout.progressRadius = 0;
    self.tabBar.layout.progressHeight = 1.5;
    
    [self reloadData];
}

#pragma mark - TYTabPagerControllerDataSource
- (NSInteger)numberOfControllersInTabPagerController{
    return 3;
}

- (UIViewController *)tabPagerController:(TYTabPagerController *)tabPagerController controllerForIndex:(NSInteger)index prefetching:(BOOL)prefetching {
    
    PageViewController *vc = [[PageViewController alloc]init];
    
    return vc;
    
}

- (NSString *)tabPagerController:(TYTabPagerController *)tabPagerController titleForIndex:(NSInteger)index {
    NSString *str = [NSString stringWithFormat:@"第 %zd 个", index + 1];
    return str;
}

- (BOOL)shouldAutorotate{
    TYPagerController *pageController = self.pagerController;
    UIViewController *currentController = [pageController controllerForIndex:pageController.curIndex];
    return currentController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    TYPagerController *pageController = self.pagerController;
    UIViewController *currentController = [pageController controllerForIndex:pageController.curIndex];
    return currentController.supportedInterfaceOrientations;
}

@end
