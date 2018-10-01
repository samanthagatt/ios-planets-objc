//
//  SAMPlanet.h
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAMPlanet : NSObject

-(instancetype)initWithName:(NSString *)name image:(UIImage *)image;

@property NSString *name;
@property UIImage *planetImage;

@end

NS_ASSUME_NONNULL_END
