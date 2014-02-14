//
//  RRPerson.m
//  RRCurseApp3
//
//  Created by rrodriguez on 14/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import "RRPerson.h"

@implementation RRPerson


@synthesize  _name;
@synthesize _surname;
@synthesize _dni;
@synthesize _department;

-(id)initWithName:(NSString*) name andSurname:(NSString*) surname andDni:(NSString*) dni  andDepartment:(RRDepartment*) department
{
    
    if (self = [super init])
    {
        
        _name=name;
        _surname=surname;
        _dni=dni;
        //_department = [[RRDepartment alloc] init];
        _department = department;
        
    }
    
    return self;
}


@end
