//
//  JPXViewController.m
//  考核2
//
//  Created by 萨缪 on 2018/8/6.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXViewController.h"
#import "ViewController.h"
@interface JPXViewController ()

@end

@implementation JPXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    _userText = [[UITextField alloc] init];
    _userText.placeholder = @"请输入账号";
    _userText.frame = CGRectMake(20, 20, 200, 20);
    
    _passText = [[UITextField alloc] init];
    _passText.placeholder = @"请输入密码";
    _passText.frame = CGRectMake(20, 50, 200, 20);
    _passText.secureTextEntry = YES;
    
    UIButton * btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(20, 110, 200, 30);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"注册成功" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_userText];
    [self.view addSubview:_passText];
    [self.view addSubview:btn];
   // [self.view addSubview:_userText];
}


- (void)pressBtn:(id)sender
{
    ViewController * a = [[ViewController alloc] init];
    
    a.str = _userText.text;
    a.str1 = _passText.text;
    [self presentViewController:a animated:YES completion:nil];
    
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
