//
//  HRMImportingView.h
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMColoredView.h"

@interface HRMImportingView : HRMColoredView

@property (weak) IBOutlet NSTextField         *guideTextField;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;

@end
