//
//  View2ViewController.h
//  連打力測定
//
//  Created by 奥村 on 2015/01/27.
//  Copyright (c) 2015年 奥村. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "View2ViewController.h"
#import "View3ViewController.h"



@interface View2ViewController : UIViewController
{
    IBOutlet UILabel *labelA1;
    IBOutlet UILabel *labelA2;
    IBOutlet UILabel *labelA3;
    IBOutlet UILabel *labelA4;
    IBOutlet UILabel *labelA5;
    IBOutlet UILabel *labelA6;
    IBOutlet UILabel *labelA7;
    
    UIButton *Button1;
    UIButton *Button2;
    UIButton *Button3;
    UIButton *Button4;
    UIButton *Button5;
    UIButton *Stop;

    NSTimer *Timer;
    float second;
    
    int count;
    
}
@property int secondNum;
@property int secondNum1;
@property int thirdNum;
@property int thirdNum1;

-(void)jikangire;

@end
