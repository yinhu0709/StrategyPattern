//
//  TLEuro.m
//  StrategyPattern
//
//  Created by Tim (Xinyin) Liu on 25/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import "TLEuro.h"

@implementation TLEuro
- (NSString *)acceptCashRMB:(CGFloat)cash {
     return  [NSString stringWithFormat:@"%.2f 欧元",cash * 0.128];
}
@end
