//
//  SocialMediaViewDelegate.h
//  PartTwo
//
//  Created by Jason Wang on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SocialMediaView;
@protocol SocialMediaViewDelegate <NSObject>


- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view;
- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view;
- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view;

@end
