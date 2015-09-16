//
//  SocialMediaDelegate.h
//  PartTwo
//
//  Created by Jamaal Sedayao on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//


#import <Foundation/Foundation.h>

@class SocialMediaView;

@protocol SocialMediaDelegate <NSObject>

- (void) socialMediaViewDidTapLikeButton:(SocialMediaView*)view;
- (void)socialMediaViewDidTapCommentButton:(SocialMediaView*)view;
- (void)socialMediaViewDidTapShareButton:(SocialMediaView*)view;

@end
