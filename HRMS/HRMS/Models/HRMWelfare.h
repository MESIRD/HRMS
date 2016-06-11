//
//  HRMWelfare.h
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, HRMWelfareType) {
    
    HRMWelfareTypeFirst  = 0,
    HRMWelfareTypeSecond = 1,
    HRMWelfareTypeThird  = 2
};

typedef NS_OPTIONS(NSInteger, HRMWelfareSalary) {
    
    HRMWelfareSalaryFullInThreeMonths = 1 << 0,  // 前三个月 全薪
    HRMWelfareSalaryFullInSixMonths   = 1 << 1,  // 前六个月 全薪
    HRMWelfareSalaryFullFormal        = 1 << 2   // 正式期 全薪
};

typedef NS_OPTIONS(NSInteger, HRMWelfareSocialInsurance) {
    
    HRMWelfareSocialInsuranceInThreeMonths = 1 << 0,  // 前三个月 社保
    HRMWelfareSocialInsuranceInSixMonths   = 1 << 1,  // 前六个月 社保
    HRMWelfareSocialInsuranceFormal        = 1 << 2,  // 正式期 社保
};

typedef NS_OPTIONS(NSInteger, HRMWelfareHousingAccumulationFunds) {
    
    HRMWelfareHousingAccumulationFundsInThreeMonths = 1 << 0,  // 前三个月 住房公积金
    HRMWelfareHousingAccumulationFundsInSixMonths   = 1 << 1,  // 前六个月 住房公积金
    HRMWelfareHousingAccumulationFundsFormal        = 1 << 2,  // 正式期 住房公积金
};

@interface HRMWelfare : NSObject

/** salary welfares*/
@property (assign) NSInteger salary;

/** social insurance welfares*/
@property (assign) NSInteger socialInsurance;

/** housing accumulation funds welfares*/
@property (assign) NSInteger housingAccumulationFunds;


/** init welfare with type*/
+ (instancetype)welfareWithType:(HRMWelfareType)type;

@end
