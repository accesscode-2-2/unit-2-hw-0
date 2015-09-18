//
//  SocialMediaDelegate.h
//  PartTwo
//
//  Created by Chris David on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SocialMediaView;

@protocol SocialMediaDelegate <NSObject>

- (void)tapLikeButton:(SocialMediaView *)view;
- (void)tapCommentButton:(SocialMediaView *)view;
- (void)tapShareButton:(SocialMediaView *)view;

@end
