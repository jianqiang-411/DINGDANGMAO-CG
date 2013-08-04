//
//  ViewController.m
//  DINGDANG
//
//  Created by shangdejigou on 13-5-18.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize myView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect fm = CGRectMake(0, 0, 321, 300);
	myView = [[MyView alloc] initWithFrame:fm];
    [self.view addSubview:myView];

}
- (IBAction)changeValue:(UISlider *)sender {
    
    CGFloat sendValue = (CGFloat)round([sender value]);
    NSInteger index = [sender tag];
    switch (index) {
        case 10:
            [self.myView setHeadValue:sendValue];
            break;
        case 11:
            [self.myView setFaceValue:sendValue];
            break;
        case 12:
            [self.myView setEyeValue:sendValue];
            break;
        case 13:
            [self.myView setNoseValue:sendValue];
            break;
        case 14:
            [self.myView setEyekuangValue:sendValue];
            break;
        case 15:
            [self.myView setMouceValue:sendValue];
            break;
        default:
            break;
    }    
    [self.myView setNeedsDisplay];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
