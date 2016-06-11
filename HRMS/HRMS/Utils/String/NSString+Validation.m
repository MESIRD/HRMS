//
//  NSString+Validation.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "NSString+Validation.h"

@implementation NSString (Validation)

- (BOOL)isBlank {
    
    @autoreleasepool {
        if ( !self) {
            return YES;
        }
        if ( self.length == 0) {
            return 0;
        }
        
        NSString *tempString = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
        if ( tempString == 0) {
            return YES;
        }
        return NO;
    }
}

- (BOOL)isEmpty {
    
    return !self || [self isEqualToString:@""];
}

@end