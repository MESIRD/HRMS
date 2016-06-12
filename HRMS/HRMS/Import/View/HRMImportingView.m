//
//  HRMImportingView.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMImportingView.h"

@implementation HRMImportingView

- (void)awakeFromNib {
    
    _guideTextField.stringValue = NSLocalizedString(@"importingGuide", nil);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self addProgress];
    });
}

- (void)addProgress {
    
    while (_progressIndicator.doubleValue < 100.0f) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            double progress = _progressIndicator.doubleValue;
            double randomNumber = rand() % 5;
            progress += randomNumber;
            _progressIndicator.doubleValue = progress;
            sleep(0.3f);
        });
    }
}

@end
