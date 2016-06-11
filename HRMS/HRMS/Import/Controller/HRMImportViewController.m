//
//  HRMImportViewController.m
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMImportViewController.h"

#import "CSVResolver.h"
#import "CSVModel.h"
#import "NSColor+Hex.h"
#import "HRMFileImportView.h"
#import "HRMImportingView.h"
#import "HRMStaffCSVDataObject.h"

@interface HRMImportViewController () <NSTextFieldDelegate>

@property (weak) IBOutlet HRMFileImportView *fileImportView;
@property (weak) IBOutlet NSTextField *guideTextField;
@property (weak) IBOutlet NSTextField *fileImportTextField;
@property (weak) IBOutlet NSTextField *fileImportPlaceholderTextField;
@property (weak) IBOutlet NSTextField *detailTextField;

@property (weak) IBOutlet HRMImportingView *fileImportingView;
@property (weak) IBOutlet NSTextField         *guideTextField;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;


@property (assign) BOOL isImported;

@end

@implementation HRMImportViewController

static NSString *const kExtentionTypeCSV = @"csv";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here
    
    _guideTextField.stringValue = NSLocalizedString(@"firstTime", nil);
    
    _fileImportTextField.layer.borderWidth = 0.5f;
    _fileImportTextField.layer.borderColor = [NSColor colorWithHex:0xBDBDBD].CGColor;
    _fileImportTextField.layer.cornerRadius = 4.0f;
    _fileImportTextField.layer.masksToBounds = YES;
    _fileImportTextField.delegate = self;
    
    _fileImportPlaceholderTextField.stringValue = NSLocalizedString(@"importPlaceholder", nil);
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init] ;
    [paragraphStyle setAlignment:NSTextAlignmentCenter];
    NSString *detailText = NSLocalizedString(@"importDetail", nil);
    NSMutableAttributedString *attributedDetailText = [[NSMutableAttributedString alloc] initWithString:detailText attributes:@{NSParagraphStyleAttributeName:paragraphStyle}];
    NSRange typeRange = [detailText rangeOfString:@"CSV"];
    [attributedDetailText addAttributes:@{NSForegroundColorAttributeName:[NSColor colorWithHex:0xFF3F36]} range:typeRange];
    _detailTextField.attributedStringValue = attributedDetailText;
    
    _isImported = NO;
}

#pragma NSTextField Delegate

- (void)controlTextDidChange:(NSNotification *)obj {
    
    NSString *filePath = [[obj userInfo][@"NSFieldEditor"] string];
    NSLog(@"%@", filePath);
    if ( [filePath isEmpty]) {
        return;
    }
    if ( [self isValidFilePath:filePath]) {
        CSVModel *model = [CSVResolver resolveFromContentsOfFile:filePath toModelClass:[HRMStaffCSVDataObject class]];
        // store data into database
        // <#FIXME#>
        
        _fileImportPlaceholderTextField.stringValue = NSLocalizedString(@"importing", nil);
        
        // go to importing view
        
    }
    _fileImportTextField.stringValue = @"";
}

#pragma Validation

- (BOOL)isValidFilePath:(NSString *)path {
    
    NSString *tempPath = [path stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *extension = [tempPath pathExtension];
    if ( ![extension isEqualToString:kExtentionTypeCSV] && ![extension isEqualToString:[kExtentionTypeCSV uppercaseString]]) {
        return NO;
    }
    return YES;
}

@end