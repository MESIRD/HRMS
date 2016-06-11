//
//  HRMJobStatus.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMJobStatus.h"

@implementation HRMJobStatus


+ (instancetype)jobStatusByType:(HRMJobStatusType)type {
    
    HRMJobStatus *status = [[HRMJobStatus alloc] init];
    switch (type) {
        case HRMJobStatusTypeProbation:
            status.status = HRMJobStatusTypeProbation;
            status.statusName = NSLocalizedString(@"jobStatusProbation", nil);
            status.statusDescription = @"";
            break;
        case HRMJobStatusTypeFormal:
            status.status = HRMJobStatusTypeFormal;
            status.statusName = NSLocalizedString(@"jobStatusFormal", nil);
            status.statusDescription = @"";
            break;
        case HRMJobStatusTypeOffJob:
            status.status = HRMJobStatusTypeOffJob;
            status.statusName = NSLocalizedString(@"jobStatusOffJob", nil);
            status.statusDescription = @"";
            break;
        default:
            break;
    }
    return status;
}

+ (instancetype)probationJobStatus {
    
    return [self jobStatusByType:HRMJobStatusTypeProbation];
}

+ (instancetype)formalJobStatus {
    
    HRMJobStatus *status = [[HRMJobStatus alloc] init];
    status.status = HRMJobStatusTypeFormal;
    status.statusName = NSLocalizedString(@"jobStatusFormal", nil);
    status.statusDescription = @"";
    return status;
}

+ (instancetype)offJobJobStatus {
    
    HRMJobStatus *status = [[HRMJobStatus alloc] init];
    status.status = HRMJobStatusTypeOffJob;
    status.statusName = NSLocalizedString(@"jobStatusOffJob", nil);
    status.statusDescription = @"";
    return status;
}

@end
