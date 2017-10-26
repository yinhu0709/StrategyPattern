//
//  ViewController.m
//  StrategyPattern
//
//  Created by Tim (Xinyin) Liu on 25/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import "ViewController.h"
#import "TLContext.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *moneyTF;
@property (weak, nonatomic) IBOutlet UILabel *moneyLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)yen:(id)sender {
    TLContext *context = [[TLContext alloc]initWithCashExchangeRate:TLExchangeRateTypeYen];
    self.moneyLabel.text = [context getResult:[self.moneyTF.text floatValue]];
}
- (IBAction)dollar:(id)sender {
    TLContext *context = [[TLContext alloc]initWithCashExchangeRate:TLExchangeRateTypeDollar];
    self.moneyLabel.text = [context getResult:[self.moneyTF.text floatValue]];
}
- (IBAction)euro:(id)sender {
    TLContext *context = [[TLContext alloc]initWithCashExchangeRate:TLExchangeRateTypeEuro];
    self.moneyLabel.text = [context getResult:[self.moneyTF.text floatValue]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
