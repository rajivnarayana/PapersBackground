//
//  WAViewController.m
//  PapersBackgroundDemo
//
//  Created by xcode4 on 27/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WAViewController.h"
#import "PaperDrawable.h"

@implementation WAViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    backgroundDrawable = [PaperDrawable new];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.layer.delegate = backgroundDrawable;
    [self.view.layer setNeedsDisplay];
    [self.view.layer setNeedsDisplayOnBoundsChange:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void) dealloc {
    [backgroundDrawable release];
    [super dealloc];
}

@end
