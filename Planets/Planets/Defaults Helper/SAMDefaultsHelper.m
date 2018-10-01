//
//  SAMDefaultsHelper.m
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMDefaultsHelper.h"

@implementation SAMDefaultsHelper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _plutoPreferenceKey = @"PlutoPreference";
        [self excludePluto];
    }
    return self;
}

- (NSString *)plutoPreference
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:_plutoPreferenceKey];
}

- (void)setPlutoPreference:(NSString *)plutoPreference
{
    
}

-(void)excludePluto
{
    [[NSUserDefaults standardUserDefaults] setObject:@"ExcludingPluto" forKey:_plutoPreferenceKey];
}

-(void)includePluto
{
    [[NSUserDefaults standardUserDefaults] setObject:@"IncludingPluto" forKey:_plutoPreferenceKey];
}

@end
