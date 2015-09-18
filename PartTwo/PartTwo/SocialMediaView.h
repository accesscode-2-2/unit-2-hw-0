//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Eric Sanchez on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewControllerDelegate.h"

@interface SocialMediaView : UIView 

@property (nonatomic, weak) id <SocialMediaViewControllerDelegate> delegate;
@end
