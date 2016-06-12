//
//  HRMFileImportView.m
//  HRMS
//
//  Created by mesird on 6/10/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "HRMFileImportView.h"


#import "NSColor+Hex.h"
#import "HRMFileImportView.h"
#import "HRMImportingView.h"


@interface HRMFileImportView()

@end

@implementation HRMFileImportView

- (void)awakeFromNib {
    
    // guide text field
    _guideTextField.stringValue = NSLocalizedString(@"firstTime", nil);
    
    // file import text field
    _fileImportTextField.layer.borderWidth = 0.5f;
    _fileImportTextField.layer.borderColor = [NSColor colorWithHex:0xBDBDBD].CGColor;
    _fileImportTextField.layer.cornerRadius = 4.0f;
    _fileImportTextField.layer.masksToBounds = YES;
    
    // file import placeholder
    _fileImportPlaceholderTextField.stringValue = NSLocalizedString(@"importPlaceholder", nil);
    
    // detail text field
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init] ;
    [paragraphStyle setAlignment:NSTextAlignmentCenter];
    NSString *detailText = NSLocalizedString(@"importDetail", nil);
    NSMutableAttributedString *attributedDetailText = [[NSMutableAttributedString alloc] initWithString:detailText attributes:@{NSParagraphStyleAttributeName:paragraphStyle}];
    NSRange typeRange = [detailText rangeOfString:@"CSV"];
    [attributedDetailText addAttributes:@{NSForegroundColorAttributeName:[NSColor colorWithHex:0xFF3F36]} range:typeRange];
    _detailTextField.attributedStringValue = attributedDetailText;
}



@end
