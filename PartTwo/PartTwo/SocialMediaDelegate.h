//
//  SocialMediaDelegate.h
//  PartTwo
//
//  Created by Felicia Weathers on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SocialMediaView;

@protocol SocialMediaDelegate <NSObject>

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view;

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view;

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view;

@end
