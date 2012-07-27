//
//  PaperDrawable.h
//  PapersBackgroundDemo
//
//  Created by xcode4 on 27/07/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface PaperDrawable : NSObject {
    UIEdgeInsets edgeInsets;
    int numberOfPages;
    int cornerRadius;
    int pageOffset;
    UIColor *fillColor;
}

@property(nonatomic) UIEdgeInsets edgeInsets;
@property(nonatomic) int numberOfPages;
@property(nonatomic) int cornerRadius;
@property(nonatomic) int pageOffset;
@property(nonatomic, retain) UIColor *fillColor;
//TODO: Need to add Shadow offset and blur radius.

@end
