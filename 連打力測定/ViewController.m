//
//  ViewController.m
//  連打力測定
//
//  Created by 奥村 on 2015/01/13.
//  Copyright (c) 2015年 奥村. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) viewDidLoad
{
    [super viewDidLoad];
    
    // UIPickerのインスタンス化
    _picker = [[UIPickerView alloc] init];
    
    // デリゲートを設定
    _picker.delegate = self;
    
    // データソースを設定
    
    // 選択インジケータを表示
    _picker.showsSelectionIndicator = YES;
    
    // UIPickerのインスタンスをビューに追加
    [self.view addSubview:_picker];
    
    
    timeArray = [NSArray arrayWithObjects:@"10秒",
                                          @"20秒",
                                          @"1分",nil];
    kazuArray = [NSArray arrayWithObjects:@"壱",
                                          @"弐",
                                          @"肆",nil];
    
}

/**
 * ピッカーに表示する列数を返す
 */
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

/**
 * ピッカーに表示する行数を返す
 */
-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return 3;
}


- (CGFloat)pickerView:(UIPickerView *)pickerView
    widthForComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            return 60.0;
            break;
            
        case 1: // 2列目
            return 100.0;
            break;
            
        default:
            return 0;
            break;
    }
}


-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            return [NSString stringWithFormat:@"%@", timeArray[row]];
            break;
            
            
        case 1: // 2列目
            return [NSString stringWithFormat:@"%@", kazuArray[row]];
            break;
            
        default:
            return 0;
            break;
    }
}


- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSInteger selectedRow = [pickerView selectedRowInComponent:0];
    NSLog(@"%ld", (long)selectedRow);
     _firstNum = (int)selectedRow;
    selectedRow = [pickerView selectedRowInComponent:1];
    _firstNum1 = (int)selectedRow;
}







-(IBAction)nextButton{
    View2ViewController *secondVC =  [self.storyboard instantiateViewControllerWithIdentifier:@"View2ViewController"];
    secondVC.secondNum = self.firstNum;
    secondVC.secondNum1 = self.firstNum1;
    [self presentViewController:secondVC animated:YES completion:nil];//YESならModal,Noなら何もなし
}
 
 
@end
