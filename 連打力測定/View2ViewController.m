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
    self.view.multipleTouchEnabled = YES;
    
    {
        View1 = [[UIView alloc] initWithFrame:CGRectMake(135, 300, 50, 50)];
        View1.backgroundColor=[UIColor blackColor];
        [self.view addSubview:View1];
    }
    {
        View2 = [[UIView alloc] initWithFrame:CGRectMake( 45, 400, 50, 50)];
        View2.backgroundColor=[UIColor blackColor];
        [self.view addSubview:View2];
    }
    {
        View3 = [[UIView alloc] initWithFrame:CGRectMake(225, 400, 50, 50)];
        View3.backgroundColor=[UIColor blackColor];
        [self.view addSubview:View3];
    }
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