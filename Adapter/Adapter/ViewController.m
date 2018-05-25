//
//  ViewController.m
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import "ViewController.h"
#import "OtherDataLine.h"
#import "AndroidDataLine.h"
#import "iPhoneDataLineClassAdapter.h"
#import "iPhoneOtherDataLineClassAdapter.h"
#import "iPhoneAndroidDataLineClassAdapter.h"
#import "iPhoneDataLineObjectAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AndroidDataLine *androidDataLine = [[AndroidDataLine alloc] init];
    androidDataLine.name = @"Android Data Line";
    androidDataLine.imageUrl = @"Android Data Line imageUrl";
    [androidDataLine execute];
    
    OtherDataLine *otherDataLine = [[OtherDataLine alloc] init];
    otherDataLine.otherName = @"Other Data Line";
    otherDataLine.otherImageUrl = @"Other Data Line imageUrl";
    [otherDataLine execute];
    
    // 类适配器
    id<TargetProtocol> androidTargetC = [[iPhoneAndroidDataLineClassAdapter alloc] initWithData:androidDataLine];
    [androidTargetC startExecute];
    
    id<TargetProtocol> otherTargetC = [[iPhoneOtherDataLineClassAdapter alloc] initWithData:otherDataLine];
    [otherTargetC startExecute];


    // 对象适配器
    id<TargetProtocol> androidTargetO = [[iPhoneDataLineObjectAdapter alloc] initWithData:androidDataLine];
    [androidTargetO startExecute];

    id<TargetProtocol> otherTargetO = [[iPhoneDataLineObjectAdapter alloc] initWithData:otherDataLine];
    [otherTargetO startExecute];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
