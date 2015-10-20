//
//  SocialMediaDelegate.h
//  PartTwo
//
//  Created by Brian Blanco on 10/20/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SocialMedia;

@protocol SocialMediaDelegate <NSObject>

- (void)tappedLikeButton:(SocialMedia *)view;
- (void)tappedShareButton:(SocialMedia *)view;
- (void)tappedCommentButton:(SocialMedia *)view;


@end
