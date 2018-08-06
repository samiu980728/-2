//
//  ViewController.m
//  考核2
//
//  Created by 萨缪 on 2018/8/6.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "ViewController.h"
#import "JPXViewController.h"
#import "VCFirstViewController.h"
#import "VCSecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    _text1 = [[UITextField alloc] init];
    _text1.frame = CGRectMake(20, 20, 300, 20);
    _text1.placeholder = @"请输入账号";
    _text1.text = _str;
    
    _text2 = [[UITextField alloc] init];
    _text2.frame = CGRectMake(20, 80, 300, 20);
    _text2.placeholder = @"请输入密码";
    _text2.secureTextEntry  = YES;
    _text2.text = _str1;
    
    UIButton * btn1 = [[UIButton alloc] init];
    btn1.frame = CGRectMake(20, 100, 50, 50);
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setTitle:@"登录" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * btn2 = [[UIButton alloc] init];
    btn2.frame = CGRectMake(200, 100, 50, 50);
    [btn2 setTitle:@"注册" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressBtn2:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_text1];
    [self.view addSubview:_text2];
    [self.view addSubview:btn1];
    [self.view addSubview:btn2];
    
}




- (void)pressBtn1:(UIButton *)btn
{
    VCFirstViewController * firstVc = [[VCFirstViewController alloc] init];
    //firstVc.tabBarItem.title = @"推荐";
    firstVc.tabBarItem.image = [[UIImage imageNamed:@"8.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    VCSecondViewController * secondVc = [[VCSecondViewController alloc] init];
    //secondVc.tabBarItem.title = @"封疆";
    secondVc.tabBarItem.image = [[UIImage imageNamed:@"9.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarController * tabController = [[UITabBarController alloc] init];
    UINavigationController * navFirst = [[UINavigationController alloc] initWithRootViewController:firstVc];
    
    UINavigationController * navSecond = [[UINavigationController alloc] initWithRootViewController:secondVc];
    
    NSArray * arrayVC = [NSArray arrayWithObjects:navFirst,navSecond, nil];
    
    tabController.viewControllers = arrayVC;
    [self presentViewController:tabController animated:YES completion:nil];
    
    
}

- (void)pressBtn2:(UIButton *)btn
{
    JPXViewController * a = [[JPXViewController alloc] init];
    [self presentViewController:a animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
