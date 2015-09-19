//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Felicia Weathers on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaDelegate.h"

@interface SocialMediaView : UIView

@property (weak, nonatomic) id <SocialMediaDelegate> delegate;

@end
