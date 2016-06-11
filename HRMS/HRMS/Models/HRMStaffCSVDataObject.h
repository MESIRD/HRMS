//
//  HRMStaffCSVDataObject.h
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "CSVDataObject.h"

@class HRMMoney;
@class HRMWelfare;
@class HRMCompany;
@class HRMJobStatus;
@class HRMDepartment;
@interface HRMStaffCSVDataObject : CSVDataObject

@property (assign) NSInteger      staffId;           // staff id
@property (assign) NSString      *no;                // staff number
@property (strong) NSString      *realName;          // real name
@property (strong) NSString      *nickName;          // nick name
@property (strong) HRMDepartment *department;        // department info
@property (strong) NSString      *mobile;            // phone number
@property (strong) NSString      *idCard;            // id card number
@property (strong) NSDate        *entryDate;         // the day join into company
@property (strong) HRMMoney      *salary;            // salary
@property (strong) HRMCompany    *company;           // company
@property (assign) HRMWelfare    *welfare;           // welfare
@property (strong) NSString      *welfarePosition;   // welfare position (city)
@property (assign) HRMJobStatus  *jobStatus;         // probation / formal etc.
@property (strong) NSDate        *birthday;          // birthday in MM/dd

/** set value for properties, normally the order must be the same with the order that property is defined*/
- (void)configureWithArray:(NSArray *)array;

@end
