//
//  RRTour.h
//  RRCurseApp3
//
//  Created by rrodriguez on 14/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLGeocoder.h>
#import "RRPerson.h"
#import "RRManagementPersonTour.h"


@interface RRTour : NSObject
{
    NSString *_name;
    NSDate *_iniDate;
    NSDate *_endDate;
    RRPerson *_organaiser;
    NSMutableDictionary *_personsOfTour;
    CLGeocoder *_placeTour;
}

@property NSString *_name;
@property NSDate *_iniDate;
@property NSDate *_endDate;

-(BOOL)addPersonTour:(RRPerson *)person;
-(void)paidPersonTour:(NSString*)dniPerson paid:(BOOL)paid;
-(void)addOrganiserTour:(NSString*)_dniOrganiser;	
-(void)printLogNoPaid;
@end
