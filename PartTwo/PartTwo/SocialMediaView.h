//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Elber Carneiro on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewDelegate.h"
@protocol SocialMediaViewDelegate;

@interface SocialMediaView : UIView
@property (weak, nonatomic) id<SocialMediaViewDelegate> delegate;
@end
