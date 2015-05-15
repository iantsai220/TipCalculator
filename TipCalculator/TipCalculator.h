//
//  TipCalculator.h
//  TipCalculator
//
//  Created by Ian Tsai on 2015-05-15.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIkit.h"

@interface TipCalculator : NSObject

-(CGFloat)calculateTip:(NSString *)textfield tipPercent:(NSString *)percentage;

@end
