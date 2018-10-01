//
//  SAMDefaultsHelper.h
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAMDefaultsHelper : NSObject

-(instancetype)init;

@property NSString *plutoPreferenceKey;
@property NSString *plutoPreference;

-(void)excludePluto;
-(void)includePluto;

@end

NS_ASSUME_NONNULL_END
