//
//  iPhoneDataLineClassAdapter.m
//  Adapter
//
//  Created by whj on 2018/5/25.
//  Copyright © 2018年 whj. All rights reserved.
//

#import "iPhoneDataLineClassAdapter.h"

@implementation iPhoneDataLineClassAdapter

@synthesize displayName;
@synthesize displayImageUrl;

- (instancetype)initWithData:(id)adaptee {

    self = [super init];
    
    if (self) {
        
        self.adaptee = adaptee;
    }
    
    return self;
}

- (NSString *)displayName { return nil; }
- (NSString *)displayImageUrl { return nil; }

- (void)startExecute {

    NSLog(@"displayName:%@  displayImageUrl:%@", self.displayName, self.displayImageUrl);
}

@end
