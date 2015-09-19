//
//  CustomView.m
//  PartTwo
//
//  Created by Bereket  on 9/18/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (IBAction)likeButton:(id)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)commentButton:(id)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (IBAction)shareButton:(id)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
}


@end
