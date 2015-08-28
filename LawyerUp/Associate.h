//
//  Associate.h
//  LawyerUp
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Client;
@class Lawyer;

@protocol Delegate
-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer*)lawyer;
-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer*)lawyer;
@end

@interface Associate : NSObject <Delegate>


@end
