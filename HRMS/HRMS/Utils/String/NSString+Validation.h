//
//  NSString+Validation.h
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validation)

/** check whether a string is blank ("   " is a blank string, but "" is not)*/
- (BOOL)isBlank;

/** check whether a string is empty ("" is a empty string, but "   " is not)*/
- (BOOL)isEmpty;

@end
