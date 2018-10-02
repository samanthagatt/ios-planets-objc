//
//  SAMSettingsViewController.m
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMSettingsViewController.h"

@interface SAMSettingsViewController ()

@end

@implementation SAMSettingsViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"PlutoPreference"] isEqualToString:@"IncludingPluto"]) {
        [[self plutoSwitch] setOn:true];
    } else {
        [[self plutoSwitch] setOn:false];
    }
}

- (IBAction)dismissVC:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)toggleIncludePluto:(id)sender {
    if ([[self plutoSwitch] isOn]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"IncludingPluto" forKey:@"PlutoPreference"];
    } else {
        [[NSUserDefaults standardUserDefaults] setObject:@"ExcludingPluto" forKey:@"PlutoPreference"];
    }
}

@end
