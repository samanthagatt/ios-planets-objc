//
//  SAMPlanet.m
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMPlanet.h"

@implementation SAMPlanet

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image
{
    self = [super init];
    if (self) {
        _name = name;
        _planetImage = image;
    }
    return self;
}

@end
