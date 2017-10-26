//
//  TLContext.h
//  StrategyPattern
//
//  Created by Tim (Xinyin) Liu on 25/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
// 环境类，持有一个策略类的引用，最终给客户端调用

typedef NS_ENUM(NSInteger, TLExchangeRateType) {
    TLExchangeRateTypeDollar,
    TLExchangeRateTypeEuro,
    TLExchangeRateTypeYen
};
@interface TLContext : NSObject
- (instancetype)initWithCashExchangeRate:(TLExchangeRateType)type;
- (NSString *)getResult:(CGFloat)money;
@end
