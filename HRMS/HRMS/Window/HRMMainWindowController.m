//
//  HRMMainWindowController.m
//  HRMS
//
//  Created by mesird on 6/11/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMMainWindowController.h"

#import "HRMImportViewController.h"

typedef NS_ENUM(NSInteger, HRMViewControllerTag) {
    
    HRMViewControllerTagImport = 0
};

@interface HRMMainWindowController ()


@property (weak) IBOutlet NSView *rootView;

@property (strong) NSViewController *currentViewController;

@property (strong) HRMImportViewController *importViewController;

@end

@implementation HRMMainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)awakeFromNib {
    
    [self changeViewController:HRMViewControllerTagImport];
}

- (void)changeViewController:(HRMViewControllerTag)tag {
    
    if (_currentViewController && _currentViewController.view) {
        [_currentViewController.view removeFromSuperview];
    }
    
    switch (tag) {
        case HRMViewControllerTagImport: {
            if (!_importViewController) {
                _importViewController = [[HRMImportViewController alloc] init];
                [_importViewController configureUI];
            }
            _currentViewController = _importViewController;
            _currentViewController.title = @"数据导入";
            break;
        }
        default:
            break;
    }
    
    [_rootView addSubview:_currentViewController.view];
    [_currentViewController.view setFrame:[_rootView bounds]];
    [_currentViewController setRepresentedObject:[NSNumber numberWithUnsignedInteger:[[[_currentViewController view] subviews] count]]];
}

@end
