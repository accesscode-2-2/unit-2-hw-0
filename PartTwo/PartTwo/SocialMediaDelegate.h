//
//  SocialMediaDelegate.h
//  PartTwo
//
//  Created by Fatima Zenine Villanueva on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SocialMediaDelegate <NSObject>

@required
- (void)socialMediaViewDidTapLikeButton;
- (void)socialMediaViewDidTapCommentButton;
- (void)socialMediaViewDidTapShareButton;
- (void)testing: (NSString *)stringTest;

@end

