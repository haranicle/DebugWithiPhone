//
//  SushiButton.h
//  SushiManiax
//
//  Created by haranicle on 2014/10/22.
//  Copyright (c) 2014年 haranicle. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface SushiButton : UIButton

@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable UIColor* borderColor;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@end
