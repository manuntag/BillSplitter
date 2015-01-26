//
//  ViewController.m
//  BillSplitter
//
//  Created by David Manuntag on 2015-01-26.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import "ViewController.h"
#import "SplitCalculator.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *amountTextField;
@property (strong, nonatomic) IBOutlet UILabel *splitAmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfGuestsLabel;
@property (strong, nonatomic) IBOutlet UISlider *numberOfGuestsSlider;

@property (strong, nonatomic) SplitCalculator * splitCalculator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.splitCalculator = [[SplitCalculator alloc]init];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    [self.amountTextField resignFirstResponder];
    
}

- (IBAction)valueChangedSlider:(id)sender {

    int roundedValue = self.numberOfGuestsSlider.value;
    
    self.numberOfGuestsLabel.text = [NSString stringWithFormat:@"%d Guests",roundedValue];

}


- (IBAction)calculateButton:(id)sender {
    
    self.splitCalculator.billAmount = [self.amountTextField.text  floatValue];
    self.splitCalculator.numberOfPeople = self.numberOfGuestsSlider.value;
    
    self.splitCalculator.splitAmount = [self.splitCalculator calculateSplit:self.splitCalculator.billAmount withNumberOfPeople:self.splitCalculator.numberOfPeople];
    
    self.splitAmountLabel.text = [NSString stringWithFormat:@"$%.2f",self.splitCalculator.splitAmount];
    
    [self.amountTextField resignFirstResponder];
    
}


@end
