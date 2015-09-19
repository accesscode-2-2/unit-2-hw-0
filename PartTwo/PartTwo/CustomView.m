//
//  CustomView.m
//  PartTwo
//
//  Created by Eric Sze on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (IBAction)likeButton:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)commentButton:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (IBAction)shareButton:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
}

@end
