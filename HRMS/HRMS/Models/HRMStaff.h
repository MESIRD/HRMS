//
//  HRMStaff.h
//  HRMS
//
//  Created by mesird on 6/7/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Realm/Realm.h>

@interface HRMStaff : RLMObject

@property (assign) NSInteger      staffId;           // staff id
@property (assign) NSString      *no;                // staff number
@property (strong) NSString      *realName;          // real name
@property (strong) NSString      *nickName;          // nick name
@property (assign) NSInteger      departmentId;      // department id
@property (strong) NSString      *mobile;            // phone number
@property (strong) NSString      *idCard;            // id card number
@property (strong) NSDate        *entryDate;         // the day join into company
@property (strong) NSString      *salary;            // salary
@property (assign) NSInteger      companyId;         // company id
@property (assign) NSInteger      welfareType;       // welfare type
@property (strong) NSString      *welfarePosition;   // welfare position (city)
@property (assign) NSInteger      jobStatus;         // probation / formal etc.
@property (strong) NSDate        *birthday;          // birthday in MM/dd

@end
