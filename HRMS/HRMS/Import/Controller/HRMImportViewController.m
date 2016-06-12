//
//  HRMImportViewController.m
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMImportViewController.h"

#import "HRMFileImportView.h"
#import "HRMImportingView.h"

#import "CSVResolver.h"
#import "CSVModel.h"
#import "HRMStaffCSVDataObject.h"

@interface HRMImportViewController () <NSTextFieldDelegate>

@property (nonatomic, strong) NSView *currentView;

@property (nonatomic, strong) HRMFileImportView *fileImportView;
@property (nonatomic, strong) HRMImportingView  *importingView;

@property (assign) BOOL isImported;

@end

@implementation HRMImportViewController

- (HRMImportingView *)importingView {
    
    if (!_importingView) {
        _importingView = [[HRMImportingView alloc] initWithFrame:CGRectMake(0, 0, WINDOW_SIZE.width, WINDOW_SIZE.height)];
    }
    return _importingView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here
    
}

- (void)configureUI {
    
    NSArray *objects = [NSArray array];
    if ([[NSBundle mainBundle] loadNibNamed:@"HRMFileImportView" owner:self topLevelObjects:&objects]) {
        _fileImportView = [[HRMFileImportView alloc] initWithFrame:CGRectMake(0, 0, WINDOW_SIZE.width, WINDOW_SIZE.height)];
        _fileImportView.fileImportTextField.delegate = self;
        _currentView = _fileImportView;
        [self.view addSubview:_fileImportView];
    }
    
    _isImported = NO;
}

#pragma NSTextField Delegate

- (void)controlTextDidChange:(NSNotification *)obj {
    
    NSString *filePath = [[obj userInfo][@"NSFieldEditor"] string];
    NSLog(@"%@", filePath);
    if ( [filePath isEmpty]) {
        return;
    }
    if ( [filePath isValidPath]) {
        CSVModel *model = [CSVResolver resolveFromContentsOfFile:filePath toModelClass:[HRMStaffCSVDataObject class]];
        // store data into database
        // <#FIXME#>
        
        _fileImportView.fileImportPlaceholderTextField.stringValue = NSLocalizedString(@"importing", nil);
        
        // go to importing view
//        [self.view addSubview:self.importingView];
        [self rightShiftView:self.importingView];
    }
    _fileImportView.fileImportTextField.stringValue = @"";
}

- (void)rightShiftView:(NSView *)view {
    
    NSRect currentFrame = _currentView.frame;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:_currentView forKey:NSViewAnimationTargetKey];
    [dict setObject:[NSValue valueWithRect:currentFrame] forKey:NSViewAnimationStartFrameKey];
    currentFrame.origin.x = -WINDOW_SIZE.width;
    [dict setObject:[NSValue valueWithRect:currentFrame] forKey:NSViewAnimationEndFrameKey];
    [dict setObject:NSViewAnimationFadeOutEffect forKey:NSViewAnimationEffectKey];
    NSViewAnimation *animation = [[NSViewAnimation alloc] initWithViewAnimations:[NSArray arrayWithObject:dict]];
    [animation startAnimation];
}

@end
