//
//  HRMStaffCSVDataObject.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMStaffCSVDataObject.h"

#import "HRMDepartment.h"
#import "HRMJobStatus.h"
#import "HRMCompany.h"
#import "HRMWelfare.h"
#import "HRMMoney.h"

#import "NSString+Date.h"


@implementation HRMStaffCSVDataObject

- (void)configureWithArray:(NSArray *)array {
    
    _no         = (NSString *)array[0];
    _realName   = (NSString *)array[1];
    _nickName   = (NSString *)array[2];
    _department = [HRMDepartment departmentWithName:(NSString *)array[3]];
    _mobile     = (NSString *)array[4];
    _idCard     = (NSString *)array[5];
    _entryDate  = [((NSString *)array[6]) dateWithFormat:@"yyyy.MM.dd"];
    _salary     = [HRMMoney moneyFromString:(NSString *)array[7]];
    _company    = [HRMCompany companyWithName:(NSString *)array[8]];
    _welfare    = [HRMWelfare welfareWithType:[((NSString *)array[9]) integerValue]];
    _welfarePosition = (NSString *)array[10];
    _jobStatus  = [HRMJobStatus jobStatusByType:[((NSString *)array[11]) integerValue]];
    _birthday   = [(NSString *)array[12] dateWithFormat:@"MM.dd"];
}

- (NSString *)description {
    
    if ( [NSJSONSerialization isValidJSONObject:self]) {
        return [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
    }
    return [super description];
}

@end
