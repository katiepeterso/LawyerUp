//
//  Lawyer.h
//  LawyerUp
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Associate.h"
#import "Practice.h"

@interface Lawyer : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger specialty;
@property (nonatomic) NSNumber *rate;
@property (nonatomic) id <Delegate> delegate;
@property (nonatomic) NSMutableSet *clientList;

@end
