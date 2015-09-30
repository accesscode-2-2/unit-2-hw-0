//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Umar on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView

- (IBAction)likeButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
}

- (IBAction)commentButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

@end
