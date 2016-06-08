//
//  CSVResolver.h
//  HRMS
//
//  Created by xujie on 16/6/8.
//  Copyright © 2016年 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CSVModel;
@class CSVDataObject;
@interface CSVResolver : NSObject

+ (CSVModel *)resolveFromContentsOfFile:(NSString *)filePath toModelClass:(Class)clazz;

@end
