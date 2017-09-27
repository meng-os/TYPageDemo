//
//  ViewController.m
//  TYPageDemo
//
//  Created by meng li on 2017/9/27.
//  Copyright © 2017年 meng li. All rights reserved.
//

#import "ViewController.h"
#import "MyPageController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 80, 35)];
    [button setTitle:@"Page" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(buttonclick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
}

- (void)buttonclick{
    MyPageController *vc = [[MyPageController alloc]init];
    vc.title = @"page";
    [self.navigationController pushViewController:vc animated:YES];
}


- (BOOL)shouldAutorotate{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

@end
