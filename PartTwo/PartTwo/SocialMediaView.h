//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Mesfin Bekele Mekonnen on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewDelegate.h"

@interface SocialMediaView : UIView

@property (nonatomic, weak) id <SocialMediaViewDelegate> delegate;

@end
