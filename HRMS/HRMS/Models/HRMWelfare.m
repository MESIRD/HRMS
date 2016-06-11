//
//  HRMWelfare.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMWelfare.h"

@implementation HRMWelfare

+ (instancetype)welfareWithType:(HRMWelfareType)type {
    
    HRMWelfare *welfare = [[HRMWelfare alloc] init];
    switch (type) {
        case HRMWelfareTypeFirst:
            welfare.salary =
            HRMWelfareSalaryFullInThreeMonths |
            HRMWelfareSalaryFullInSixMonths   |
            HRMWelfareSalaryFullFormal;
            welfare.socialInsurance =
            HRMWelfareSocialInsuranceInThreeMonths |
            HRMWelfareSocialInsuranceInSixMonths   |
            HRMWelfareSocialInsuranceFormal;
            welfare.housingAccumulationFunds =
            HRMWelfareHousingAccumulationFundsInThreeMonths |
            HRMWelfareHousingAccumulationFundsInSixMonths   |
            HRMWelfareHousingAccumulationFundsFormal;
            break;
        case HRMWelfareTypeSecond:
            welfare.salary =
            HRMWelfareSalaryFullInSixMonths |
            HRMWelfareSalaryFullFormal;
            welfare.socialInsurance =
            HRMWelfareSocialInsuranceInThreeMonths |
            HRMWelfareSocialInsuranceInSixMonths   |
            HRMWelfareSocialInsuranceFormal;
            welfare.housingAccumulationFunds =
            HRMWelfareHousingAccumulationFundsInSixMonths |
            HRMWelfareHousingAccumulationFundsFormal;
            break;
        case HRMWelfareTypeThird:
            welfare.salary =
            HRMWelfareSalaryFullInThreeMonths |
            HRMWelfareSalaryFullInSixMonths   |
            HRMWelfareSalaryFullFormal;
            welfare.socialInsurance =
            HRMWelfareSocialInsuranceInSixMonths |
            HRMWelfareSocialInsuranceFormal;
            welfare.housingAccumulationFunds =
            HRMWelfareHousingAccumulationFundsFormal;
            break;
        default:
            break;
    }
    return welfare;
}

@end
