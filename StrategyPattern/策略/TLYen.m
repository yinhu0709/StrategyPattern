//
//  TLYen.m
//  StrategyPattern
//
//  Created by Tim (Xinyin) Liu on 25/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import "TLYen.h"

@implementation TLYen
- (NSString *)acceptCashRMB:(CGFloat)cash {
     return  [NSString stringWithFormat:@"%.2f 日元",cash * 17.14];
}
@end
