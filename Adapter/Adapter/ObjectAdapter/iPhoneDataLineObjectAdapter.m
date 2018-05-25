//
//  iPhoneDataLineObjectAdapter.m
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import "iPhoneDataLineObjectAdapter.h"
#import "AndroidDataLine.h"
#import "OtherDataLine.h"

@implementation iPhoneDataLineObjectAdapter {
    
    id _adaptee;
}

@synthesize displayName;
@synthesize displayImageUrl;

- (instancetype)initWithData:(id)adaptee {
    
    self = [super init];
    
    if (self) {
        
        _adaptee = adaptee;
    }
    
    return self;
}

- (NSString *)displayName {
    
    if (!_adaptee) {
        return nil;
    }
    
    if ([_adaptee isKindOfClass:[AndroidDataLine class]]) {
        
        AndroidDataLine *androidDataLine = (AndroidDataLine *)_adaptee;
        return androidDataLine.name;
    } else {
        OtherDataLine *otherDataLine = (OtherDataLine *)_adaptee;
        return otherDataLine.otherName;
    }
    
    return nil;
}

- (NSString *)displayImageUrl {
    
    if (!_adaptee) {
        return nil;
    }
    
    if ([_adaptee isKindOfClass:[AndroidDataLine class]]) {
        
        AndroidDataLine *androidDataLine = (AndroidDataLine *)_adaptee;
        return androidDataLine.imageUrl;
    } else {
        OtherDataLine *otherDataLine = (OtherDataLine *)_adaptee;
        return otherDataLine.otherImageUrl;
    }
    
    return nil;
}

- (void)startExecute {
    
    NSLog(@"displayName:%@  displayImageUrl:%@", self.displayName, self.displayImageUrl);
}

@end
