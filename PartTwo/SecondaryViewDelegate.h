//
//  SecondaryViewDelegate.h
//  PartTwo
//
//  Created by Kaisha Jones on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

// must set @class instead of property or error

@class SecondaryView;

@protocol SecondaryViewDelegate <NSObject>

- (void)socialMediaViewDidTapLikeButton:(SecondaryView *)view;
- (void)socialMediaViewDidTapCommentButton:(SecondaryView *)view;
- (void)socialMediaViewDidTapShareButton:(SecondaryView *)view;

@end