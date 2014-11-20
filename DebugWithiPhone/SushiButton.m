//
//  SushiButton.m
//  SushiManiax
//
//  Created by haranicle on 2014/10/22.
//  Copyright (c) 2014年 haranicle. All rights reserved.
//

#import "SushiButton.h"

@implementation SushiButton

- (instancetype)initWithCoder:(NSCoder*)coder
{
    self = [super initWithCoder:coder];
    if (self) {
    }
    return self;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (void)setBorderColor:(UIColor*)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.clipsToBounds = YES;
}

- (void)changeTitleToFugu
{
    [self setTitle:@"🐡" forState:UIControlStateNormal];
}

@end
