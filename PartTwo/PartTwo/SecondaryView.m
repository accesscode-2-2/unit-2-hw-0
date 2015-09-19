//
//  SecondaryView.m
//  PartTwo
//
//  Created by Kaisha Jones on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SecondaryView.h"

@implementation SecondaryView

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
