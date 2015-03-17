//
//  View2ViewController.m
//  連打力測定
//
//  Created by 奥村 on 2015/01/27.
//  Copyright (c) 2015年 奥村. All rights reserved.
//

#import "View2ViewController.h"
//#import "View3ViewController.h"

@interface View2ViewController ()

@end

@implementation View2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.multipleTouchEnabled = YES;
    {
    if (_secondNum1==0)             //ボタン一つ
    {
        Button5 = [[UIButton alloc] initWithFrame:CGRectMake(65, 300, 200, 200)];
        Button5.backgroundColor=[UIColor blackColor];
        [self.view addSubview:Button5];
        [Button5 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];
    }
    else if (_secondNum1==1)        //ボタン二つ
    {
        Button1 = [[UIButton alloc] initWithFrame:CGRectMake( 75, 300, 50, 50)];
        Button1.backgroundColor=[UIColor blackColor];
        [self.view addSubview:Button1];
        [Button1 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];

        
        Button2 = [[UIButton alloc] initWithFrame:CGRectMake(195, 300, 50, 50)];
        Button2.backgroundColor=[UIColor blackColor];
        [self.view addSubview:Button2];
        [Button2 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];

    }
    else if (_secondNum1==2)        //ボタン四つ
    {
        Button1 = [[UIButton alloc] initWithFrame:CGRectMake( 75, 300, 50, 50)];
        Button1.backgroundColor=[UIColor blackColor];
        [self.view addSubview:Button1];
        [Button1 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];


        Button2 = [[UIButton alloc] initWithFrame:CGRectMake(195, 300, 50, 50)];
        Button2.backgroundColor=[UIColor blackColor];
        [self.view addSubview:Button2];
        [Button2 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];


        Button3 = [[UIButton alloc] initWithFrame:CGRectMake( 75, 400, 50, 50)];
        Button3.backgroundColor=[UIColor blackColor];
        [self.view addSubview:Button3];
        [Button3 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];


        Button4 = [[UIButton alloc] initWithFrame:CGRectMake(195, 400, 50, 50)];
        Button4.backgroundColor=[UIColor blackColor];
        [self.view addSubview:Button4];
        [Button4 addTarget:self
                    action:@selector(tap:)
          forControlEvents:UIControlEventTouchUpInside];

    }
    }
    
    
    
    {       //ストップボタン
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
        Timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                           target:self
                                                         selector:@selector(jikan)
                                                         userInfo:nil
                                                          repeats:YES];
    }
    {
        {
            if (_secondNum==0) {
                second=5;
            }else if (_secondNum==1){
                second=20;
            }else if (_secondNum==2){
                second=60;
            }
        }

    }
}
/*                                                                  yokunai
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([event touchesForView:Button1]) {
//        [self tap];
        NSLog(@"ya");
        count++;
        labelA2.text=[NSString stringWithFormat:@"%d",count];
    }
    else if ([event touchesForView:Button2]){
//        [self tap];
        count++;
        labelA2.text=[NSString stringWithFormat:@"%d",count];
    }
    else if ([event touchesForView:Button3]){
//        [self tap];
        count++;
        labelA2.text=[NSString stringWithFormat:@"%d",count];
    }
    else if ([event touchesForView:Button4]){
//        [self tap];
        count++;
        labelA2.text=[NSString stringWithFormat:@"%d",count];
    }
    else if ([event touchesForView:Button5]){
//        [self tap];
        count++;
        labelA2.text=[NSString stringWithFormat:@"%d",count];
    }
}
*/
-(void)tap{
    count++;
    labelA2.text=[NSString stringWithFormat:@"%d",count];
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
            [self jikangire];
            break;
            
        case 1:
            NSLog(@"測定を続ける");
            break;
    }
}

-(void)timer{
    [Timer fire];
}

-(void)jikan{
    labelA1.text=[NSString stringWithFormat:@"%.1f",second];
    {
    if (second <= 0.0) {
        [self jikangire];
        [Timer invalidate];
/*        View3ViewController *thirdVC =  [self.storyboard instantiateViewControllerWithIdentifier:@"View3ViewController"];
        [[View3ViewController alloc]init];
        thirdVC.fourthNum = self.thirdNum;
        thirdVC.fourthNum1 = self.thirdNum1;
        [self presentViewController:thirdVC animated:YES completion:nil];
*/
    }
    else {
        second=second-0.01;
    }
    }
}

-(void)atai{
    _thirdNum = second;
    _thirdNum = count;
}


-(void)jikangire{
    View3ViewController *thirdVC =  [self.storyboard instantiateViewControllerWithIdentifier:@"View3ViewController"];//行き先
//    thirdVC.fourthNum = _thirdNum;
//    thirdVC.fourthNum1 =_thirdNum1;
    thirdVC.fourthNum  = second;
    thirdVC.fourthNum1 = count;
    [self presentViewController:thirdVC animated:YES completion:nil];//画面遷移
    
}

//thirdVC.fourthNum1 = self.thirdNum1;


@end