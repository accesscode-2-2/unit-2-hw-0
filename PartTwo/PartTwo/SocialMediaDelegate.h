//
//  SocialMediaDelegate.h
//  PartTwo
//
//  Created by Jackie Meggesto on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CustomView;

@protocol SocialMediaDelegate <NSObject>


- (void)socialMediaViewDidTapLikeButton:(CustomView *)view;
- (void)socialMediaViewDidTapCommentButton:(CustomView *)view;
- (void)socialMediaViewDidTapShareButton:(CustomView *)view;

@end
