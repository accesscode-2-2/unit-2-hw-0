//
//  CustomView.m
//  PartTwo
//
//  Created by Daniel Distant on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

-(void)socialMediaViewDidTapLikeButton:(CustomView *)view {
    [self.delegate socialMediaViewDidTapLikeButton:view];
}

-(void)socialMediaViewDidTapCommentButton:(CustomView *)view {
    [self.delegate socialMediaViewDidTapCommentButton:view];
}

-(void)socialMediaViewDidTapShareButton:(CustomView *)view {
    [self.delegate socialMediaViewDidTapShareButton:view];
}

- (IBAction)likeButtonTapped:(id)sender {
    CustomView *view = [[CustomView alloc] init];
    [self socialMediaViewDidTapLikeButton:view];
}

- (IBAction)commentButtonTapped:(id)sender {
    CustomView *view = [[CustomView alloc] init];
    [self socialMediaViewDidTapCommentButton:view];
}

- (IBAction)shareButtonTapped:(id)sender {
    CustomView *view = [[CustomView alloc] init];
    [self socialMediaViewDidTapShareButton:view];
}



@end
