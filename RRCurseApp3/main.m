//
//  main.m
//  RRCurseApp3
//
//  Created by rrodriguez on 13/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RRAppDelegate.h"
#import "RRTour.h"
int main(int argc, char * argv[])
{
    RRTour *mitour=[[RRTour alloc]init];
    
    RRDepartment *mdepartment=[[RRDepartment alloc]init];
    mdepartment._name=@"RRHH";
    
    RRPerson *p1=[[RRPerson alloc]initWithName:@"r!" andSurname:@"ads" andDni:@"12" andDepartment:mdepartment];
     RRPerson *p2=[[RRPerson alloc]initWithName:@"cc!" andSurname:@"ads" andDni:@"454" andDepartment:mdepartment];
    [mitour addPersonTour:p1];
    [mitour addPersonTour:p2];
    
    [mitour printLogNoPaid];
    NSLog(@"\n__________________\n");
    [mitour paidPersonTour:@"454" paid:YES];
    
    [mitour printLogNoPaid];

    
    
    
    
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([RRAppDelegate class]));
    }
}
