//
//  HRMJobStatus.h
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, HRMJobStatusType) {
    
    HRMJobStatusTypeProbation = 0,
    HRMJobStatusTypeFormal    = 1,
    HRMJobStatusTypeOffJob    = 2
};

@interface HRMJobStatus : NSObject

@property (assign) NSInteger status;
@property (strong) NSString *statusName;
@property (strong) NSString *statusDescription;

/** get job status by type*/
+ (instancetype)jobStatusByType:(HRMJobStatusType)type;

/** probation status*/
+ (instancetype)probationJobStatus;

/** formal status*/
+ (instancetype)formalJobStatus;

/** off job status*/
+ (instancetype)offJobJobStatus;

@end
