//
//  socialProtocol.h
//  PartTwo
//
//  Created by Henna on 9/18/15.
//  Copyright (c) 2015 Henna. All rights reserved.
//

#import <Foundation/Foundation.h>
@class socialView;
@protocol socialProtocol <NSObject>

- (void)didTapLikeButton:(socialView *)view;

- (void)didTapCommentButton:(socialView *)view;

- (void)didTapShareButton:(socialView *)view;

@end
