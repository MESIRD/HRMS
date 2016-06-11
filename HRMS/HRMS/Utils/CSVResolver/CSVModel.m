//
//  CSVModel.m
//  HRMS
//
//  Created by xujie on 16/6/8.
//  Copyright © 2016年 mesird. All rights reserved.
//

#import "CSVModel.h"

@implementation CSVModel

/** overwrite description method, if you want to print every object please override description method in each object class*/
- (NSString *)description {
    
    NSMutableString *desc = [NSMutableString string];
    [desc appendString:@"\r"];
    for (NSString *title in _titles) {
        [desc appendFormat:@"%@ ", title];
    }
    [desc appendString:@"\r"];
    for (id data in _dataList) {
        [desc appendString:[data description]];
        [desc appendString:@"\r"];
    }
    
    return desc;
}

@end
