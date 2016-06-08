//
//  HRMStaff.h
//  HRMS
//
//  Created by mesird on 6/7/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HRMDepartment;
@interface HRMStaff : NSObject

@property (nonatomic, assign) NSInteger     no;                 // staff number
@property (nonatomic, strong) NSString      *realName;          // real name
@property (nonatomic, strong) NSString      *nickName;          // nick name
@property (nonatomic, strong) NSString      *mobile;            // phone number
@property (nonatomic, strong) HRMDepartment *department;        // department info
@property (nonatomic, strong) NSString      *idCard;            // id card number
@property (nonatomic, strong) NSDate        *entryDate;         // the day join into company
@property (nonatomic, strong) NSString      *salary;            // salary
@property (nonatomic, strong) NSString      *company;           // company
@property (nonatomic, assign) NSInteger     *welfareType;       // welfare type
@property (nonatomic, strong) NSString      *welfarePosition;   // welfare position ( city)
@property (nonatomic, assign) NSInteger     *jobStatus;         // probation / formal etc.
@property (nonatomic, strong) NSDate        *birthday;          // birthday in MM/dd

@end
