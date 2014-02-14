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

@interface RRTour : NSObject
{
    NSString *_name;
    NSData *_iniDate;
    NSData *_endDate;
    RRPerson *_organaiser;
    NSMutableDictionary *_personsOfTour;
    CLGeocoder *_placeTour;
}

@property NSString *_name;
@property NSData *_iniDate;
@property NSData *_endDate;

-(BOOL)addPersonTour:(RRPerson *)person;
-(void)paidPersonTour:()
@end
