//
//  NSColor+Hex.h
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSColor (Hex)

/** color with hex*/
+ (NSColor *)colorWithHex:(NSInteger)hex;

/** color with hex and alpha*/
+ (NSColor *)colorWithHex:(NSInteger)hex andAlpha:(CGFloat)alpha;

@end
