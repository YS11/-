//
//  ViewController.h
//  連打力測定
//
//  Created by 奥村 on 2015/01/13.
//  Copyright (c) 2015年 奥村. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View2ViewController.h"


@interface ViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>
{

    NSArray *timeArray;
    NSArray *kazuArray;
    
    
    IBOutlet UILabel *label0;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label3;
}

-(IBAction)nextButton;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;


@property int firstNum;
@property int firstNum1;


@end

