//
//  ViewController.m
//  LLButtonDemo
//
//  Created by kevin on 2017/2/17.
//  Copyright © 2017年 Ecommerce. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+LLExtension.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *testBtn;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (IBAction)clickBtn:(id)sender {
    NSArray *typeArr = @[@(LLButtonStyleTextLeft),@(LLButtonStyleTextRight),@(LLButtonStyleTextTop),@(LLButtonStyleTextBottom)];
    UIButton *btn = sender;
    [_testBtn layoutButtonWithEdgeInsetsStyle:[typeArr[btn.tag-10] integerValue] imageTitleSpace:[_textField.text intValue]];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}


@end
