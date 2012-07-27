//
//  PaperDrawable.m
//  PapersBackgroundDemo
//
//  Created by xcode4 on 27/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PaperDrawable.h"
#import "Common.h"

@implementation PaperDrawable

@synthesize edgeInsets;
@synthesize pageOffset;
@synthesize numberOfPages;
@synthesize cornerRadius;
@synthesize fillColor;

- (id) init {
    self = [super init];
    if (self) {
        edgeInsets = UIEdgeInsetsMake(20, 20, 20, 20);
        pageOffset = 5;
        numberOfPages = 3;
        cornerRadius = 10;
        fillColor = [[UIColor whiteColor] retain];
    }
    return self;
}

- (void) drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    
    CGRect rect;
    CGMutablePathRef pathRef;
    int pageOffset_ = 0;
    for (int i=0; i<3; i++) {        
        CGContextSaveGState(ctx);
        rect = CGRectMake(edgeInsets.left, edgeInsets.top, layer.bounds.size.width - edgeInsets.left - edgeInsets.right, layer.bounds.size.height - edgeInsets.top - edgeInsets.bottom - pageOffset_);
        pathRef = createRoundedRectForRect(rect, cornerRadius);
        CGContextAddPath(ctx, pathRef);
        CGContextSetFillColorWithColor(ctx, fillColor.CGColor);
        CGContextSetShadow(ctx, CGSizeMake(0, 5), 5);
        CGContextFillPath(ctx);
        CGContextRestoreGState(ctx);
        pageOffset_ += pageOffset;
    }
}

@end
