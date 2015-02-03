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
    _picker = [[UIPickerView alloc]init];
    
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
    kazuArray = [NSArray arrayWithObjects:@"一つ",
                                          @"二つ",
                                          @"四つ",nil];
    
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
/**
-(NSString *)pickerView:(UIPickerView *)pickerViewtitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
            return [timeArray objectsAtIndexes:row];
    
            return [kazuArray objectsAtIndexes:row];
            
            }
}
*/
- (CGFloat)pickerView:(UIPickerView *)pickerView
    widthForComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            return 50.0;
            break;
            
        case 1: // 2列目
            return 100.0;
            break;
            
        default:
            return 0;
            break;
    }
}
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            return [timeArray objectsAtIndexes:nil];
            break;
            
        case 1: // 2列目
            return [kazuArray objectsAtIndexes:nil];
            break;
            
        default:
            return 0;
            break;
    }
}
/**
 * ピッカーの選択行が決まったとき
 */
- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
/**    // 1列目の選択された行数を取得
    NSInteger val0 = [pickerView selectedRowInComponent:0];
    
    // 2列目の選択された行数を取得
    NSInteger val1 = [pickerView selectedRowInComponent:1];
    
    // 3列目の選択された行数を取得
    NSInteger val2 = [pickerView selectedRowInComponent:2];
    
    NSLog(@"1列目:%d行目が選択", val0);
    NSLog(@"2列目:%d行目が選択", val1);
*/
    NSInteger selectedRow = [pickerView selectedRowInComponent:0];
    NSLog(@"%ld", (long)selectedRow);


}







-(IBAction)nextButton{
    View2ViewController *secondVC =  [self.storyboard instantiateViewControllerWithIdentifier:@"View2ViewController"];
    secondVC.secondNum = self.firstNum;
    [self presentViewController:secondVC animated:YES completion:nil];//YESならModal,Noなら何もなし
}
 
 
@end
