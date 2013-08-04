//
//  MyView.m
//  DINGDANG
//
//  Created by shangdejigou on 13-5-18.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import "MyView.h"

@implementation MyView
@synthesize headValue,faceValue,eyeValue,noseValue,eyekuangValue,mouceValue;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
//        CGRect fm = CGRectMake(0, 0, 280, 260);
//        NSValue *v = [NSValue valueWithCGRect:fm];        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    myContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(myContext, 1.0f);
    [[UIColor blackColor] set];
    
    //tou
    CGContextSaveGState(myContext);
    CGRect rect1 = CGRectMake(20, 20, 280, 260);
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRoundedRect:rect1 cornerRadius:headValue];    
    CGContextSetRGBFillColor(myContext, 35/255.0, 39/255.0, 200/255.0, 1);
    [path1 fill];
    [path1 stroke];
    CGContextRestoreGState(myContext);
    
    
    //lian
    CGContextSaveGState(myContext);
    CGRect rect2 = CGRectMake(40, 90, 240, 180);
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:rect2 cornerRadius:faceValue];
    CGContextSetRGBFillColor(myContext, 1, 1, 1, 1);
    [path2 fill];
    [path2 stroke];
    CGContextRestoreGState(myContext);
    
    //yankuang
    CGContextSaveGState(myContext);
    CGRect rect3 = CGRectMake(80, 50, 80, 80);
    UIBezierPath *path3 = [UIBezierPath bezierPathWithRoundedRect:rect3 cornerRadius:eyekuangValue];
    
    CGRect rect4 = CGRectMake(160, 50, 80, 80);
    UIBezierPath *path4 = [UIBezierPath bezierPathWithRoundedRect:rect4 cornerRadius:eyekuangValue];
    CGContextSetRGBFillColor(myContext, 203.0/255.0, 1, 1, 1);
    
    [path3 fill];
    [path4 fill];
    [path3 stroke];
    [path4 stroke];
    CGContextRestoreGState(myContext);
    
    
    //bizi
    CGContextSaveGState(myContext);
    CGRect rect5 = CGRectMake(140, 110, 40, 40); 
    UIBezierPath *path5 = [UIBezierPath bezierPathWithRoundedRect:rect5 cornerRadius:noseValue];
    CGContextSetRGBFillColor(myContext, 1, 39/255.0, 24/255.0, 1);
    [path5 fill];
    [path5 stroke];
    CGContextRestoreGState(myContext);
    
    
    //yanjing
    CGContextSaveGState(myContext);
    CGRect rect6 = CGRectMake(130, 85, 20, 20);
    UIBezierPath *path6 = [UIBezierPath bezierPathWithRoundedRect:rect6 cornerRadius:eyeValue];
    CGRect rect7 = CGRectMake(170, 85, 20, 20);
    UIBezierPath *path7 = [UIBezierPath bezierPathWithRoundedRect:rect7 cornerRadius:eyeValue];
    CGContextSetRGBFillColor(myContext, 0, 0, 0, 1);
    [path6 fill];
    [path7 fill];
    [path6 stroke];
    [path7 stroke];
    CGContextRestoreGState(myContext);
    
    //zui/////////////////
    CGContextSaveGState(myContext);
    CGContextMoveToPoint(myContext, 160, 150);
    CGContextAddLineToPoint(myContext, 160, 230);
    CGContextMoveToPoint(myContext, (mouceValue/120)*30+80, (mouceValue/120)*20+230);
	CGContextAddQuadCurveToPoint(myContext, 160,(mouceValue/120)*40+230,240-(mouceValue/120)*30 , (mouceValue/120)*20+230);
	CGContextStrokePath(myContext);

    CGContextStrokePath(myContext);
    //[path fill];
    CGContextRestoreGState(myContext);
    
    //huzi 
    CGContextSaveGState(myContext);
    CGContextMoveToPoint(myContext, 80, 170);
    CGContextAddLineToPoint(myContext, 140, 170);
    CGContextMoveToPoint(myContext, 80, 185);
    CGContextAddLineToPoint(myContext, 140, 185);
    CGContextMoveToPoint(myContext, 80, 200);
    CGContextAddLineToPoint(myContext, 140, 200);
    //
    CGContextMoveToPoint(myContext, 180, 170);
    CGContextAddLineToPoint(myContext, 240, 170);
    CGContextMoveToPoint(myContext, 180, 185);
    CGContextAddLineToPoint(myContext, 240, 185);
    CGContextMoveToPoint(myContext, 180, 200);
    CGContextAddLineToPoint(myContext, 240, 200);
    
    CGContextStrokePath(myContext);
    CGContextRestoreGState(myContext);
    
}


@end
