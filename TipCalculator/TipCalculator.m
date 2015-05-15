//
//  TipCalculator.m
//  TipCalculator
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "TipCalculator.h"
@interface TipCalculator ()



@end

@implementation TipCalculator

-(CGFloat)calculateTip:(NSString *)textfield tipPercent:(NSString *)percentage{
    
    CGFloat tipPercent = [percentage floatValue] / 100;
    
    CGFloat billAmount = [textfield floatValue];
    return billAmount * tipPercent;
}



@end
