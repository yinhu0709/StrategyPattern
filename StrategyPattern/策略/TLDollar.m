//
//  TLDollar.m
//  StrategyPattern
//
//  Created by Tim (Xinyin) Liu on 25/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import "TLDollar.h"

@implementation TLDollar
- (NSString *)acceptCashRMB:(CGFloat)cash {
   return  [NSString stringWithFormat:@"%.2f 美元",cash * 0.15];
}
@end
