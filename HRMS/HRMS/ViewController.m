//
//  ViewController.m
//  HRMS
//
//  Created by mesird on 6/7/16.
//  Copyright © 2016 mesird. All rights reserved.
//

#import "ViewController.h"
#import "CSVResolver.h"
#import "CSVModel.h"
#import "Person.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    CSVModel *model = [CSVResolver resolveFromContentsOfFile:@"/Users/xujie/Desktop/test.csv" toModelClass:[Person class]];
    NSLog(@"%@", model);
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
