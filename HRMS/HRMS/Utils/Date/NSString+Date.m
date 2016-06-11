//
//  NSString+Date.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "NSString+Date.h"

@implementation NSString (Date)

static NSString *const kDateDefaultFormat = @"yyyy-MM-dd";

- (NSDate *)dateWithFormat:(NSString *)format {
    
    if ( !self || [self isEqualToString:@""]) {
        NSLog(@"String cannot be Empty");
        return nil;
    }
    NSString *dateFormat;
    if ( !format || [format isEqualToString:@""]) {
        dateFormat = kDateDefaultFormat;
    } else {
        dateFormat = format;
    }
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSDate *date = [formatter dateFromString:self];
    return date;
}

@end
