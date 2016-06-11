//
//  NSColor+Hex.m
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "NSColor+Hex.h"

@implementation NSColor (Hex)

+ (NSColor *)colorWithHex:(NSInteger)hex {
    
    return [self colorWithHex:hex andAlpha:1.0f];
}

+ (NSColor *)colorWithHex:(NSInteger)hex andAlpha:(CGFloat)alpha {
    
    return [NSColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0f
                           green:((float)((hex & 0xFF00) >> 8))/255.0f
                            blue:((float)((hex & 0xFF)))/255.0f
                           alpha:alpha];
}

@end

