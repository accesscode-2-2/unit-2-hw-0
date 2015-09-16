//
//  SocialMediaDelegate.h
//  PartTwo
//
//  Created by Zoufishan Mehdi on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SocialMediaDelegate <NSObject>

@optional
- (void)addColor: (NSString *)colorAdded;

//- (void)colorPicked: (CIColor *)colorDisplayed;
- (void)socialMediaViewDidTapLikeButton:(CIColor *)likeColor;
- (void)socialMediaViewDidTapCommentButton:(CIColor *)commentColor;
- (void)socialMediaViewDidTapShareButton:(CIColor *)shareColor;

@end
