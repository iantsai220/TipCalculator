//
//  ViewController.h
//  TipCalculator
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TipCalculator.h"


@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic) TipCalculator *tipCalculator;

@property (weak, nonatomic) IBOutlet UITextField *billAmount;

@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;


@property (weak, nonatomic) IBOutlet UITextField *tipPercentage;










@end

