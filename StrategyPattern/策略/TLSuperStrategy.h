//
//  TLSuperStrategy.h
//  StrategyPattern
//
//  Created by Tim (Xinyin) Liu on 25/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import <UIKit/UIKit.h>
// 抽象策略类
@interface TLSuperStrategy :NSObject
- (NSString *)acceptCashRMB:(CGFloat)cash;
@end
