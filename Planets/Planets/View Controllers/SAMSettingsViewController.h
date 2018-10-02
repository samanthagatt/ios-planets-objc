//
//  SAMSettingsViewController.h
//  Planets
//
//  Created by Samantha Gatt on 10/1/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAMSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *plutoSwitch;

- (IBAction)dismissVC:(id)sender;
- (IBAction)toggleIncludePluto:(id)sender;

@end

NS_ASSUME_NONNULL_END
