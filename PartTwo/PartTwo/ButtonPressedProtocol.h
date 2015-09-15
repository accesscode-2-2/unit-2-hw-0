//
//  ButtonPressedProtocol.h
//  PartTwo
//
//  Created by Shena Yoshida on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SocialMediaView;

@protocol ButtonPressedProtocol <NSObject>

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view;

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view;

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view;

@end
