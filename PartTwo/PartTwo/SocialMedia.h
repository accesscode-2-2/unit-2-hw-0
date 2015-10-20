//
//  SocialMedia.h
//  PartTwo
//
//  Created by Brian Blanco on 9/19/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaDelegate.h"


@interface SocialMedia : UIView

@property (nonatomic, weak) id<SocialMediaDelegate>delegate;

@end
