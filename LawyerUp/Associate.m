//
//  Associate.m
//  LawyerUp
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Associate.h"
#import "Lawyer.h"
#import "Client.h"

@implementation Associate

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer*)lawyer {
    
    [lawyer.clientList addObject:client];
    
}

-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer*)lawyer {
    NSInteger rate = lawyer.rate;
    if (client.legalProblem.length < 10) {
        client.fee = 5*rate;
    }
    else if (10 < client.legalProblem.length < 20) {
        client.fee = 10*rate;
    }
    else {
        client.fee = 25*rate;
    }
    return client.fee;
}

@end
