//
//  HRMFileImportView.h
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMColoredView.h"

@interface HRMFileImportView : HRMColoredView

@property (weak) IBOutlet NSTextField *guideTextField;
@property (weak) IBOutlet NSTextField *fileImportTextField;
@property (weak) IBOutlet NSTextField *fileImportPlaceholderTextField;
@property (weak) IBOutlet NSTextField *detailTextField;

@end
