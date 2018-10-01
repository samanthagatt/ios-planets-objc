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
#import "SAMDefaultsHelper.h"
#import "SAMPlanet.h"

@interface SAMPlanetsCollectionViewController ()

@end

@implementation SAMPlanetsCollectionViewController

static NSString * const reuseIdentifier = @"PlanetCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[SAMPlanetCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    _defaultsHelper = [[SAMDefaultsHelper alloc] init];
    _planetController = [[SAMPlanetController alloc] init];
    _planets = [self returnPlanets];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self collectionView] reloadData];
}

- (NSArray *)returnPlanets {
    if ([[[self defaultsHelper] plutoPreference]  isEqual: @"IncludingPluto"])
    {
        return [[self planetController] planetsWithPluto];
    }
    if ([[[self defaultsHelper] plutoPreference]  isEqual: @"ExcludingPluto"])
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

    [[cell imageView] setImage:[[[self planets] objectAtIndex:[indexPath item]] planetImage]];
    [[cell nameLabel] setText:[[[self planets] objectAtIndex:[indexPath item]] name]];
    
    return cell;
}

@end
