//
//  iPhoneOtherDataLineClassAdapter.m
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import "iPhoneOtherDataLineClassAdapter.h"
#import "OtherDataLine.h"

@implementation iPhoneOtherDataLineClassAdapter

- (instancetype)initWithData:(id)adaptee {
    
    self = [super init];
    
    if (self) {
        
        self.adaptee = adaptee;
    }
    
    return self;
}

- (NSString *)displayName {
    
    OtherDataLine *otherDataLine = self.adaptee;
    return otherDataLine.otherName;
}
- (NSString *)displayImageUrl {
    
    OtherDataLine *otherDataLine = self.adaptee;
    return otherDataLine.otherImageUrl;
}

@end
