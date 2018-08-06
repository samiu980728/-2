//
//  FUFirstViewController.m
//  考核2
//
//  Created by 萨缪 on 2018/8/6.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "FUFirstViewController.h"

@interface FUFirstViewController ()

@end

@implementation FUFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"正式工作";
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(pressBtn:)];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)pressBtn:(UIButton *)btn
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
