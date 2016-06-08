//
//  HRMDepartment.h
//  HRMS
//
//  Created by mesird on 6/7/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HRMDepartment : NSObject

@property (nonatomic, assign) NSInteger departmentId;
@property (nonatomic, strong) NSString *departmentName;
@property (nonatomic, strong) NSString *departmentDescription;

@end
