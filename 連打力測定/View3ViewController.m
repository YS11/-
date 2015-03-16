//
//  View3ViewController.m
//  連打力測定
//
//  Created by 奥村 on 2015/02/18.
//  Copyright (c) 2015年 奥村. All rights reserved.
//

#import "View3ViewController.h"

@interface View3ViewController ()

@end

@implementation View3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    {
    LabelA.text = [NSString stringWithFormat:@"%d",number];
    LabelB.text = [NSString stringWithFormat:@"%d",_fourthNum];
    LabelC.text = [NSString stringWithFormat:@"%d",_fourthNum1];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)number{
    number = _fourthNum/_fourthNum1;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



-(IBAction)title{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
