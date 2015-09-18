//
//  SocialDelegateProtocol.h
//  PartTwo
//
//  Created by Christian Maldonado on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SocialMediaView;

@protocol SocialDelegateProtocol <NSObject>

-(void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view;
-(void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view;
-(void)socialMediaViewDidTapShareButton:(SocialMediaView *)view;

@end
