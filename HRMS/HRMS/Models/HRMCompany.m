//
//  HRMCompany.m
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMCompany.h"

@implementation HRMCompany

static NSString *const kCompanyKey = @"UserDefaults_Company";

- (instancetype)initWithId:(NSInteger)companyId andName:(NSString *)companyName {
    
    if (self = [super init]) {
        self.companyId   = companyId;
        self.companyName = companyName;
    }
    return self;
}

+ (HRMCompany *)companyWithName:(NSString *)companyName {
    
    if ([companyName isEmpty]) {
        return nil;
    }
    
    // fetch from user defaults
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *companies = [userDefaults objectForKey:kCompanyKey];
    if (companies && companies.count > 0) {
        for (HRMCompany *company in companies) {
            if ([company.companyName containsString:companyName]) {
                return company;
            }
        }
    }
    
    // fetch from database
    // <#FIXME#>
    
    return nil;
}

+ (HRMCompany *)companyWithId:(NSInteger)companyId {
    
    if ( companyId <= 0) {
        return nil;
    }
    
    // fetch from user defaults
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *companies = [userDefaults objectForKey:kCompanyKey];
    if (companies && companies.count > 0) {
        for (HRMCompany *company in companies) {
            if (company.companyId == companyId) {
                return company;
            }
        }
    }
    
    // fetch from database
    // <#FIXME#>
    
    return nil;
}

+ (HRMCompany *)yijiqingchenCompany {
    
    return [self companyWithId:HRMCompanyIdYiJiQingChen];
}

+ (HRMCompany *)bigetuosiCompany {
    
    return [self companyWithId:HRMCompanyIdBiGeTuoSi];
}

@end
