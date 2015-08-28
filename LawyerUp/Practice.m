//
//  Practice.m
//  LawyerUp
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Practice.h"

@implementation Practice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.specialtyCharges = @{@(FamilyLaw):@200.00, @(PatentLaw):@380.50, @(CriminalLaw):@405.99, @(CorporateLaw):@400.00};
    }
    return self;
}

@end
