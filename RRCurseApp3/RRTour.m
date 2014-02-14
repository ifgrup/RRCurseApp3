//
//  RRTour.m
//  RRCurseApp3
//
//  Created by rrodriguez on 14/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import "RRTour.h"

@implementation RRTour


@synthesize _name;
@synthesize _iniDate;
@synthesize _endDate;



-(id)init
{
    if (self=[super init])
    {
        _name=@"defaulttour";
        
        // The time interval
        NSTimeInterval theTimeInterval = 326.4;
        
        
        
        // Create the NSDates
        _iniDate = [[NSDate alloc] init];
        _endDate= [[NSDate alloc] initWithTimeInterval:theTimeInterval sinceDate:_iniDate];
        _personsOfTour=[[NSMutableDictionary alloc]init];
        
        
        
            }
    
    return self;
}


-(BOOL)addPersonTour:(RRPerson *)person
{
    
    if (![[_personsOfTour allKeys] containsObject:person._dni])
    {
        RRManagementPersonTour *mMPT=[[RRManagementPersonTour alloc]init];
        mMPT._person=person;
        mMPT._paid=NO;
        mMPT._organiser=NO;
        [_personsOfTour setObject:mMPT forKey:person._dni];
        
          //[dict setObject:@"Foo" forKey:@"Key_1"];
        
        return YES;
        
    }else{
        return NO;
    }
    
    
}
-(void)paidPersonTour:(NSString*)dniPerson paid:(BOOL)paid
{
RRManagementPersonTour *value = [_personsOfTour objectForKey:dniPerson];
    value._paid=paid;

}
-(void)addOrganiserTour:(NSString*)_dniOrganiser
{
    if ([[_personsOfTour allKeys] containsObject:_dniOrganiser])
    {
        RRManagementPersonTour *value = [_personsOfTour objectForKey:_dniOrganiser];
        value._organiser=YES;
        
    }


}
-(void)printLogNoPaid
{
    for(id key in _personsOfTour) {
        RRManagementPersonTour *value = [_personsOfTour objectForKey:key];
        if(!value._paid)
        {
            NSLog(@" Name: %@ Dni: %@ key: %@", value._person._name ,value._person._dni,key);
        }
        
    }
}

@end
