//
//  View2ViewController.m
//  連打力測定
//
//  Created by 奥村 on 2015/01/27.
//  Copyright (c) 2015年 奥村. All rights reserved.
//

#import "View2ViewController.h"

@interface View2ViewController ()

@end

@implementation View2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


- (void)ViewDidLoad{
    [self CreateButton];   //追記。メソッドの呼び出し
}

- (void)CreateButton{
    //ボタンのインスタンス化とボタンタイプの選択を行う。
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //ボタンを表示する横位置、縦位置、横幅、縦幅を設定する。
    button.frame = CGRectMake(10, 10, 100, 10);
    
    //Viewにボタンを追加して表示する。
    [self.view addSubview:button];
}












@end