//
//  SAMPlanetsCollectionViewController.m
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMPlanetsCollectionViewController.h"
#import "SAMPlanetCollectionViewCell.h"
#import "SAMPlanetController.h"
#import "SAMPlanet.h"

@interface SAMPlanetsCollectionViewController ()

@end

@implementation SAMPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (!([[[NSUserDefaults standardUserDefaults] objectForKey:@"PlutoPreference"] isEqualToString:(@"IncludingPluto")] || [[[NSUserDefaults standardUserDefaults] objectForKey:@"PlutoPreference"] isEqualToString:(@"ExcludingPluto")]))
         {
             [[NSUserDefaults standardUserDefaults] setObject:@"ExcludingPluto" forKey:@"PlutoPreference"];
         }
    
    _planetController = [[SAMPlanetController alloc] init];
    _planets = [self returnPlanets];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _planets = [self returnPlanets];
    [[self collectionView] reloadData];
}

- (NSArray *)returnPlanets {
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"PlutoPreference"]  isEqual: @"IncludingPluto"])
    {
        return [[self planetController] planetsWithPluto];
    }
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"PlutoPreference"]  isEqual: @"ExcludingPluto"])
    {
        return [[self planetController] planetsWithoutPluto];
    }
    return [[NSArray alloc] init];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[self planets] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SAMPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    // for some reason setting the content mode in the storyboard didn't work
    [[cell imageView] setContentMode:UIViewContentModeScaleAspectFit];
    
    [[cell imageView] setTranslatesAutoresizingMaskIntoConstraints:false];
    NSLayoutConstraint *imageWidth;
    if ([indexPath item] == 0)
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:12.0];
    } else if ([indexPath item] == 1)
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:30.0];
    } else if ([indexPath item] == 2)
    {
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:31.0];
    } else if ([indexPath item] == 3)
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:17.0];
    } else if ([indexPath item] == 4)
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:345.0];
    } else if ([indexPath item] == 5)
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:292.0];
    } else if ([indexPath item] == 6)
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:124.0];
    } else if ([indexPath item] == 7)
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:120.0];
    } else
    {
        [[cell imageView] removeConstraints:[[cell imageView] constraints]];
        imageWidth = [NSLayoutConstraint
                      constraintWithItem:[cell imageView] attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:6.0];
    }
    [NSLayoutConstraint activateConstraints:[[NSArray alloc] initWithObjects:imageWidth, nil]];
    
    
    [[cell imageView] setImage:[[[self planets] objectAtIndex:[indexPath item]] planetImage]];
    [[cell nameLabel] setText:[[[self planets] objectAtIndex:[indexPath item]] name]];
    
    return cell;
}

@end
