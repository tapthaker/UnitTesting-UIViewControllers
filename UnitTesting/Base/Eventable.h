//
//  Eventable.h
//  UnitTesting
//
//  Created by Tapan Thaker on 30/05/15.
//  Copyright (c) 2015 Tapan Thaker. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Controllable;

@protocol Eventable <NSObject>

@property (nonatomic,strong) id<Controllable> controllable;
-(void)dispatchEvent:(NSString*)eventName object:(NSObject*)object;

@end
