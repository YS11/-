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
    if (_secondNum1==0)
    {{
        Button5 = [[UIButton alloc] initWithFrame:CGRectMake(65, 300, 200, 200)];
        Button5.backgroundColor=[UIColor blackColor];
        [Button5 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Button5];
    }}
    else if (_secondNum1==1)
    {{
        Button1 = [[UIButton alloc] initWithFrame:CGRectMake( 75, 300, 50, 50)];
        Button1.backgroundColor=[UIColor blackColor];
        [Button1 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Button1];
    }
    {
        Button2 = [[UIButton alloc] initWithFrame:CGRectMake(195, 300, 50, 50)];
        Button2.backgroundColor=[UIColor blackColor];
        [Button2 addTarget:self
                    action:@selector(tap:)
         forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Button2];
    }}
    else if (_secondNum1==2)
    {{
        Button1 = [[UIButton alloc] initWithFrame:CGRectMake( 75, 300, 50, 50)];
        Button1.backgroundColor=[UIColor blackColor];
        [Button1 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Button1];
    }
    {
        Button2 = [[UIButton alloc] initWithFrame:CGRectMake(195, 300, 50, 50)];
        Button2.backgroundColor=[UIColor blackColor];
        [Button2 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Button2];
    }
    {
        Button3 = [[UIButton alloc] initWithFrame:CGRectMake( 75, 400, 50, 50)];
        Button3.backgroundColor=[UIColor blackColor];
        [Button3 addTarget:self
                    action:@selector(tap:)
         forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Button3];
    }
    {
        Button4 = [[UIButton alloc] initWithFrame:CGRectMake(195, 400, 50, 50)];
        Button4.backgroundColor=[UIColor blackColor];
        [Button4 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Button4];
    }}
    }
    
    
    
    {
        Stop =[UIButton buttonWithType:UIButtonTypeRoundedRect];
        Stop.center = CGPointMake(10, 20);
        [Stop setTitle:@"一時停止"
                forState:UIControlStateNormal];
        [Stop sizeToFit];
        [Stop addTarget:self
                   action:@selector(teisi:)
         forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:Stop];
        
        
        
        [super viewDidLoad];
    }
    {
        Timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                           target:self
                                                         selector:@selector(time)
                                                         userInfo:nil
                                                          repeats:YES];
    }
    {
        {
            if (_secondNum==0) {
                second=10;
            }else if (_secondNum==1){
                second=20;
            }else if (_secondNum==2){
                second=60;
            }
        }
        [Timer fire];

    }
    _thirdNum = second;
    _thirdNum = count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)tap:(id)sender{
    count++;
    labelA2.text=[NSString stringWithFormat:@"%d",count];
}
-(void)teisi:(id)sender{
    UIAlertView *alert1 = [[UIAlertView alloc] init];
    alert1.delegate = self;
    alert1.title = @"一時停止";
    alert1.message = @"タイトルにもどってもよろしいですか？";
    [alert1 addButtonWithTitle:@"いいえ"];
    [alert1 addButtonWithTitle:@"はい"];
    [alert1 show];
}
-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 0:
            {
            NSLog(@"いいえ");
            UIAlertView *alert2 = [[UIAlertView alloc] init];
            alert2.delegate = self;
            alert2.title = @"どうしますか？";
            alert2.message = @"選びましょう。";
            [alert2 addButtonWithTitle:@"結果画面へ"];
            [alert2 addButtonWithTitle:@"測定を続ける"];
            [alert2 show];
            }
            break;
            
        case 1:
            NSLog(@"はい");
            [self dismissViewControllerAnimated:YES completion:nil];
            break;
    }
}
-(void)alertView2:(UIAlertView*)alertView2 clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 0:
            NSLog(@"結果画面へ");
            
            break;
            
        case 1:
            NSLog(@"測定を続ける");
            break;
    }
}



-(void)time{
    labelA1.text=[NSString stringWithFormat:@"%.1f",second];
    {
    if (second <= 0.0) {
        [Timer invalidate];
        View3ViewController *thirdVC =  [self.storyboard instantiateViewControllerWithIdentifier:@"View3ViewController"];
        thirdVC.fourthNum = self.thirdNum;
        thirdVC.fourthNum1 = self.thirdNum1;

        [self.navigationController pushViewController:thirdVC animated:YES];
    }
    else {
        second=second-0.1;
    }
    }
}











@end