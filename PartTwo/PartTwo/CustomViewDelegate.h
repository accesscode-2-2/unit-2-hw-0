//
//  CustomViewDelegate.h
//  PartTwo
//
//  Created by Bereket  on 9/18/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CustomView;

@protocol CustomViewDelegate <NSObject>

- (void)socialMediaViewDidTapLikeButton:(CustomView *)view;
- (void)socialMediaViewDidTapCommentButton:(CustomView *)view;
- (void)socialMediaViewDidTapShareButton:(CustomView *)view;

@end
