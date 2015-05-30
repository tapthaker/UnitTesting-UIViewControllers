//
//  Controllable.h
//  UnitTesting
//
//  Created by Tapan Thaker on 30/05/15.
//  Copyright (c) 2015 Tapan Thaker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Eventable.h"

@protocol Controllable <NSObject>

@property (nonatomic,strong) id<Eventable> eventable;
-(void)render:(NSString*)key value:(NSObject*)value;
-(NSObject*)getValue:(NSString*)key;

@optional

-(void)goToPage:(NSString*)pageName;
-(void)showAlert:(NSString*)alertMessage;

@end
