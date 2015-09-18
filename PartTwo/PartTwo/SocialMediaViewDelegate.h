//
//  SocialMediaViewDelegate.h
//  PartTwo
//
//  Created by Elber Carneiro on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SocialMediaView.h"
@class SocialMediaView;

@protocol SocialMediaViewDelegate <NSObject>

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view;
- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view;
- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view;

@end
