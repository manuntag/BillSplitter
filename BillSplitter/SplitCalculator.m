//
//  SplitCalculator.m
//  BillSplitter
//
//  Created by David Manuntag on 2015-01-26.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "SplitCalculator.h"

@implementation SplitCalculator

-(float)calculateSplit:(float)billAmount withNumberOfPeople:(int)numberOfPeople {
    
    self.splitAmount = billAmount/numberOfPeople;
    
    return self.splitAmount;
    
}


@end
