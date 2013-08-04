//
//  MyView.h
//  DINGDANG
//
//  Created by shangdejigou on 13-5-18.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyView : UIView
{
    CGContextRef myContext;
    NSMutableArray *muarr;
    CGFloat headValue;
    CGFloat faceValue;
    CGFloat eyekuangValue;
    CGFloat eyeValue;
    CGFloat noseValue;
    CGFloat mouceValue;
}
@property (assign , nonatomic) CGFloat headValue,faceValue,eyeValue,eyekuangValue,noseValue,mouceValue;
@end
