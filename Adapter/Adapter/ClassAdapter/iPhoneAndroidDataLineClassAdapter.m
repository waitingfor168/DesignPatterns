//
//  iPhoneAndroidDataLineClassAdapter.m
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import "iPhoneAndroidDataLineClassAdapter.h"
#import "AndroidDataLine.h"

@implementation iPhoneAndroidDataLineClassAdapter

- (instancetype)initWithData:(id)adaptee {
    
    self = [super init];
    
    if (self) {
        
        self.adaptee = adaptee;
    }
    
    return self;
}

- (NSString *)displayName {
    
    AndroidDataLine *androidDataLine = self.adaptee;
    return androidDataLine.name;
}
- (NSString *)displayImageUrl {
    
    AndroidDataLine *androidDataLine = self.adaptee;
    return androidDataLine.imageUrl;
}

@end
