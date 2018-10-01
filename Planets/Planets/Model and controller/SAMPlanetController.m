//
//  SAMPlanetController.m
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMPlanetController.h"
#import "SAMPlanet.h"

@implementation SAMPlanetController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _planetsWithoutPluto = [[NSArray alloc] initWithObjects:
                             [[SAMPlanet alloc] initWithName:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                             [[SAMPlanet alloc] initWithName:@"Venus" image: [UIImage imageNamed:@"venus"]],
                             [[SAMPlanet alloc] initWithName:@"Earth" image: [UIImage imageNamed:@"earth"]],
                             [[SAMPlanet alloc] initWithName:@"Mars" image: [UIImage imageNamed:@"mars"]],
                             [[SAMPlanet alloc] initWithName:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                             [[SAMPlanet alloc] initWithName:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                             [[SAMPlanet alloc] initWithName:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                             [[SAMPlanet alloc] initWithName:@"Neptune" image: [UIImage imageNamed:@"neptune"]],
                             nil];
        
        _planetsWithPluto = [[NSArray alloc] initWithObjects:
                             [[SAMPlanet alloc] initWithName:@"Mercury" image: [UIImage imageNamed:@"mercury"]],
                             [[SAMPlanet alloc] initWithName:@"Venus" image: [UIImage imageNamed:@"venus"]],
                             [[SAMPlanet alloc] initWithName:@"Earth" image: [UIImage imageNamed:@"earth"]],
                             [[SAMPlanet alloc] initWithName:@"Mars" image: [UIImage imageNamed:@"mars"]],
                             [[SAMPlanet alloc] initWithName:@"Jupiter" image: [UIImage imageNamed:@"jupiter"]],
                             [[SAMPlanet alloc] initWithName:@"Saturn" image: [UIImage imageNamed:@"saturn"]],
                             [[SAMPlanet alloc] initWithName:@"Uranus" image: [UIImage imageNamed:@"uranus"]],
                             [[SAMPlanet alloc] initWithName:@"Neptune" image: [UIImage imageNamed:@"neptune"]],
                             [[SAMPlanet alloc] initWithName:@"Pluto" image: [UIImage imageNamed:@"pluto"]],
                             nil];
    }
    return self;
}

@end
