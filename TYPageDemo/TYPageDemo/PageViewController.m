//
//  PageViewController.m
//  TYPageDemo
//
//  Created by meng li on 2017/9/27.
//  Copyright © 2017年 meng li. All rights reserved.
//

#import "PageViewController.h"
#import "NewViewController.h"

@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 80, 35)];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonclick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)buttonclick{
    NewViewController *vc = [[NewViewController alloc]init];
    vc.title = @"Push Page";
    [self.navigationController pushViewController:vc animated:NO];
}

- (BOOL)shouldAutorotate{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

@end
