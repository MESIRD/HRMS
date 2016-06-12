//
//  AppDelegate.m
//  HRMS
//
//  Created by mesird on 6/7/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "AppDelegate.h"

#import "HRMMainWindowController.h"

@interface AppDelegate ()

@property (nonatomic, strong) HRMMainWindowController *mainWindowController;

@end

@implementation AppDelegate

- (HRMMainWindowController *)mainWindowController {
    
    if (!_mainWindowController) {
        _mainWindowController = [[HRMMainWindowController alloc] initWithWindowNibName:@"HRMMainWindow"];
    }
    return _mainWindowController;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self.mainWindowController showWindow:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
