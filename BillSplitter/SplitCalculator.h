//
//  SplitCalculator.h
//  BillSplitter
//
//  Created by David Manuntag on 2015-01-26.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SplitCalculator : NSObject

@property (assign) float billAmount;
@property (assign) int numberOfPeople;
@property (assign) float splitAmount;

-(float)calculateSplit:(float)billAmount withNumberOfPeople:(int)numberOfPeople;

@end
