//
//  main.m
//  LawyerUp
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"
#import "Practice.h"
#import "Client.h"
#import "Associate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Practice *newPractice = [Practice new];
        
        Lawyer *lawyer1 = [Lawyer new];
        lawyer1.name = @"Saul Goodman";
        lawyer1.specialty = PatentLaw;
        lawyer1.rate = [newPractice.specialtyCharges objectForKey:@(PatentLaw)];
        lawyer1.clientList = [NSMutableSet new];
    
        Lawyer *lawyer2 = [Lawyer new];
        lawyer2.name = @"Christina Gutierrez";
        lawyer2.specialty = CriminalLaw;
        lawyer2.rate = [newPractice.specialtyCharges objectForKey:@(FamilyLaw)];
        lawyer2.clientList = [NSMutableSet new];
        
        Associate *associate1 = [Associate new];
        Associate *associate2 = [Associate new];
        
        lawyer1.delegate = associate1;
        lawyer2.delegate = associate2;
        
        Client *client1 = [Client new];
        client1.name = @"Charlyne";
        client1.legalProblem = @"Fried chicken theft";
        client1.specialty = CriminalLaw;
        
        Client *client2 = [Client new];
        client2.name = @"Judd";
        client2.legalProblem = @"Tweet copyright infringement";
        client2.specialty = PatentLaw;
        
        [associate1 addClientToClientList:client2 forLawyer:lawyer1];
        [associate2 addClientToClientList:client1 forLawyer:lawyer2];
        
        [associate1 payableAmountForClient:client2 forLawyer:lawyer1];
        [associate2 payableAmountForClient:client1 forLawyer:lawyer2];
    
    }
    return 0;
}
