//
//  CSVResolver.m
//  HRMS
//
//  Created by xujie on 16/6/8.
//  Copyright © 2016年 mesird. All rights reserved.
//

#import "CSVResolver.h"
#import "CSVDataObject.h"
#import "CSVModel.h"

@implementation CSVResolver

static NSString *const kCSVDefaultSeparator = @",";

+ (CSVModel *)resolveFromContentsOfFile:(NSString *)filePath toModelClass:(Class)clazz {
    
    if ( !filePath || [filePath isEqualToString:@""]) {
        NSLog(@"file path is empty.");
        return nil;
    }
    
    CSVModel *csvModel = [[CSVModel alloc] init];
    NSData *csvData = [NSData dataWithContentsOfFile:filePath];
    if ( csvData) {
        NSString *content = [[NSString alloc] initWithData:csvData encoding:NSUTF8StringEncoding];
        NSArray *contentLines = [content componentsSeparatedByString:@"\r"];
        
        // table titles
        NSArray *titles = [contentLines[0] componentsSeparatedByString:kCSVDefaultSeparator];
        if ( titles && titles.count > 0) {
            csvModel.titles = [titles copy];
        }
        
        // table contents
        NSMutableArray *dataObjects = [NSMutableArray array];
        for (int i = 1; i < contentLines.count; i ++) {
            NSArray *data = [contentLines[i] componentsSeparatedByString:kCSVDefaultSeparator];
            if ( !data || data.count == 0) {
                continue;
            }
            
            id model = [[clazz alloc] init];
            if ( [model respondsToSelector:@selector(configureWithArray:)]) {
                [model performSelector:@selector(configureWithArray:) withObject:data];
            }
            [dataObjects addObject:model];
        }
        csvModel.dataList = [dataObjects copy];
    }
    return csvModel;
}

@end
