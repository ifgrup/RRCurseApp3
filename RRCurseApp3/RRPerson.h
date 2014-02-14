//
//  RRPerson.h
//  RRCurseApp3
//
//  Created by rrodriguez on 14/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RRDepartment.h"
@interface RRPerson : NSObject
{
    NSString *_name;
    NSString *_surname;
    NSString *_dni;
    RRDepartment *_department;
    
    
    
}


@property NSString *_name;
@property NSString *_surname;
@property NSString *_dni;
@property RRDepartment *_department;

-(id)initWithName:(NSString*) name andSurname:(NSString*) surname andDni:(NSString*) dni  andDepartment:(RRDepartment*) department;
@end
