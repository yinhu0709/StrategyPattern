//
//  TLContext.m
//  StrategyPattern
//
//  Created by Tim (Xinyin) Liu on 25/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import "TLContext.h"
#import "TLSuperStrategy.h"
#import "TLDollar.h"
#import "TLEuro.h"
#import "TLYen.h"
@interface TLContext ()
@property(strong ,nonatomic)TLSuperStrategy *strategy;
@end
@implementation TLContext
- (instancetype)initWithCashExchangeRate:(TLExchangeRateType)type {
    self = [super init];
    if (self) {
        switch (type) {
            case TLExchangeRateTypeDollar:
                self.strategy = [[TLDollar alloc]init];
                break;
            case TLExchangeRateTypeYen:
                self.strategy = [[TLYen alloc]init];
                break;
            case TLExchangeRateTypeEuro:
                self.strategy = [[TLEuro alloc]init];
                break;
            default:
                break;
        }
    }
    return self;
}
- (NSString *)getResult:(CGFloat)money {
    return [self.strategy acceptCashRMB:money];
}
@end
