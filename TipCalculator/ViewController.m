//
//  ViewController.m
//  TipCalculator
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)tipCalculatorButton:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tipCalculator = [TipCalculator new];
    self.billAmount.delegate = self;
    [self.tipSlider addTarget:self action:@selector(tipPercentageSlider:) forControlEvents:UIControlEventValueChanged];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)tipPercentageSlider:(id)sender {
    
    
    self.tipPercentage.text = [NSString stringWithFormat:@"%.2f", self.tipSlider.value];
}



- (IBAction)tipCalculatorButton:(UIButton *)sender {
    
    
    //take bill amount
    CGFloat tipAmount = [self.tipCalculator calculateTip:self.billAmount.text tipPercent:self.tipPercentage.text];
    //parse string to float value
    //multiply by percentage
    //display on label
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$ %.2f", tipAmount];
    
    [self.tipPercentage resignFirstResponder];
    
}














@end
