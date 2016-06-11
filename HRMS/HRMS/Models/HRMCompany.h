//
//  HRMCompany.h
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, HRMCompanyId) {
    HRMCompanyIdYiJiQingChen  = 1,
    HRMCompanyIdBiGeTuoSi     = 2
};

@interface HRMCompany : NSObject

@property (assign) NSInteger  companyId;
@property (strong) NSString  *companyName;

- (instancetype)initWithId:(NSInteger)companyId andName:(NSString *)companyName;

#pragma mark - get methods

/** get company with company name*/
+ (HRMCompany *)companyWithName:(NSString *)companyName;

/** get company with company id*/
+ (HRMCompany *)companyWithId:(NSInteger)companyId;

#pragma mark - existed companies

/** 一骑轻尘信息技术有限公司*/
+ (HRMCompany *)yijiqingchenCompany;

/** 比格拓思信息技术有限公司*/
+ (HRMCompany *)bigetuosiCompany;

@end
