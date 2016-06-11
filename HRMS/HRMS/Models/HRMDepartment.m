//
//  HRMDepartment.m
//  HRMS
//
//  Created by mesird on 6/7/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMDepartment.h"

@implementation HRMDepartment

static NSString *const kDepartmentKey = @"UserDefaults_Department";

- (instancetype)initWithId:(NSInteger)departmentId name:(NSString *)departmentName andDescription:(NSString *)departmentDescription {
    
    if (self = [super init]) {
        self.departmentId           = departmentId;
        self.departmentName         = departmentName;
        self.departmentDescription  = departmentDescription;
    }
    return self;
}

+ (HRMDepartment *)departmentWithName:(NSString *)departmentName {
    
    // fetch from userDefaults
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *departments = [userDefaults objectForKey:kDepartmentKey];
    if (departments && departments.count > 0) {
        for (HRMDepartment *department in departments) {
            if ( [department.departmentName containsString:departmentName]) {
                return department;
            }
        }
    }
    
    // fetch from database
    // <#FIXME#>
    
    return nil;
}

@end
