//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Jason Wang on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewDelegate.h"

@interface SocialMediaView : UIView

@property (nonatomic) UIColor *currentColor;
@property (nonatomic, weak) id <SocialMediaViewDelegate> delegate;

@end
