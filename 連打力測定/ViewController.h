//
//  ViewController.h
//  連打力測定
//
//  Created by 奥村 on 2015/01/13.
//  Copyright (c) 2015年 奥村. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View2ViewController.h"


@interface FirstViewController : UIViewController <UIPickerViewDelegate>
{

    NSArray *timeArray;
    NSArray *kazuArray;
    
    
    IBOutlet UILabel *label0;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label3;
    IBOutlet UILabel *labelA1;
    IBOutlet UILabel *labelA2;
    IBOutlet UILabel *labelA3;
    IBOutlet UILabel *labelB1;
    IBOutlet UILabel *labelB2;
    IBOutlet UILabel *labelB3;
    IBOutlet UILabel *labelC1;
    IBOutlet UILabel *labelC2;
    IBOutlet UILabel *labelC3;
    IBOutlet UILabel *label4;
    IBOutlet UILabel *label5;
    IBOutlet UILabel *label6;
    IBOutlet UILabel *label7;
    IBOutlet UILabel *label8;
    IBOutlet UILabel *label9;
}

-(IBAction)nextButton;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;


@property int firstNum;



@end

