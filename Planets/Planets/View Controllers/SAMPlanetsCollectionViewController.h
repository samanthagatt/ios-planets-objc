//
//  SAMPlanetsCollectionViewController.h
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SAMPlanetController;
@class SAMDefaultsHelper;

NS_ASSUME_NONNULL_BEGIN

@interface SAMPlanetsCollectionViewController : UICollectionViewController

@property SAMDefaultsHelper *defaultsHelper;
@property SAMPlanetController *planetController;
@property NSArray *planets;

- (NSArray *)returnPlanets;

@end

NS_ASSUME_NONNULL_END
