//
//  xibSocialMediaView.h
//  PartTwo
//
//  Created by Diana Elezaj on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewProtocol.h"

@interface xibSocialMediaView : UIView

@property (nonatomic, weak) id <SocialMediaViewProtocol> delegate;

@end
