//
//  Practice.h
//  LawyerUp
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Specialty) {
    FamilyLaw,
    PatentLaw,
    CriminalLaw,
    CorporateLaw
};

@interface Practice : NSObject

@property (nonatomic) NSSet *lawyers;
@property (nonatomic) NSDictionary *specialtyCharges;

@end
