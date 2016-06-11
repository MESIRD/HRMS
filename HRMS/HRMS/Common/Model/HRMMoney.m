//
//  HRMMoney.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMMoney.h"

@implementation HRMMoney

static NSString *const kMoneyAcceptableCharacters = @"1234567890.,";
static NSString *const kMoneyStringZero           = @"0";

static const float kMoneyFloatZero = 0.0f;

+ (instancetype)moneyFromString:(NSString *)string {
    
    if (![string isEmpty] && [self isValidMoney:string]) {
        return (HRMMoney *)[string copy];
    }
    return [HRMMoney moneyFromString:kMoneyStringZero];
}

#pragma mark - transfer type methods

- (float)yuanFloatValue {
    
    if ([self isEmpty]) {
        return kMoneyFloatZero;
    }
    return [self floatValue];
}

- (unsigned long)centLongValue {
    
    return (unsigned long)([self yuanFloatValue] * 100);
}

#pragma mark - validation methods

/** validate money type*/
+ (BOOL)isValidMoney:(NSString *)money {
    
    NSInteger dotIndex = -1;
    NSInteger dotCount = 0;
    for (int i = 0; i < money.length; i ++) {
        unichar c = [money characterAtIndex:i];
        if (![kMoneyAcceptableCharacters containsString:[NSString stringWithFormat:@"%c", c]]) {
            return NO;
        }
        if (c == '.') {
            dotIndex = i;
            dotCount ++;
        }
    }
    if (dotCount > 1) {
        return NO;
    }
    if (dotIndex == 0 || dotIndex == money.length - 1) {
        return NO;
    }
    if ([money characterAtIndex:0] == '0' && dotIndex > 1) {
        return NO;
    }
    return YES;
}

@end
