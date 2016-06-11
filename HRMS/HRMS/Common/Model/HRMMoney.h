//
//  HRMMoney.h
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HRMMoney : NSString

/** transfer string type to money type*/
+ (instancetype)moneyFromString:(NSString *)string;

/** yuan value for salary*/
- (float)yuanFloatValue;

/** cent value for salary*/
- (unsigned long)centLongValue;

@end
