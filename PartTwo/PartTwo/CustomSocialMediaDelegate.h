//
//  CustomSocialMediaDelegate.h
//  PartTwo
//
//  Created by Justine Gartner on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CustomSocialMediaView;

@protocol CustomSocialMediaDelegate <NSObject>

- (void)customeSocialMediaViewDidTapLikeButton:(CustomSocialMediaView *)view;
- (void)customSocialMediaViewDidTapCommentButton:(CustomSocialMediaView *)view;
- (void)customSocialMediaViewDidTapShareButton:(CustomSocialMediaView *)view;

@end
