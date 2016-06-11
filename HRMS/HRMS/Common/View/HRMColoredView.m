//
//  HRMColoredView.m
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMColoredView.h"

@implementation HRMColoredView

- (void)setBackgroundColor:(NSColor *)backgroundColor {
    
    _backgroundColor = backgroundColor;
    
    // redraw
    [self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    if ( _backgroundColor) {
        [_backgroundColor setFill];
    } else {
        [[NSColor whiteColor] setFill];
    }
    NSRectFill(dirtyRect);
    [super drawRect:dirtyRect];
}

@end
