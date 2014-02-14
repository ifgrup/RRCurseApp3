//
//  RRManagementPersonTour.h
//  RRCurseApp3
//
//  Created by formacion on 14/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//
// Implement the logic to assign a person if paid and /or  organiser

#import <Foundation/Foundation.h>
#import "RRPerson.h"

@interface RRManagementPersonTour : NSObject
{
    RRPerson *_person;
    BOOL _paid;
    BOOL _organiser;
}

@property RRPerson *_person;
@property BOOL _paid;
@property BOOL _organiser;



@end
