//
//  socialView.m
//  PartTwo
//
//  Created by Henna on 9/18/15.
//  Copyright (c) 2015 Henna. All rights reserved.
//

#import "socialView.h"


@implementation socialView

- (IBAction)likeButtonTapped:(UIButton *)sender {
    
    [self.delegate didTapLikeButton:self];
}

- (IBAction)commentButtonTapped:(UIButton *)sender {
    
    [self.delegate didTapCommentButton:self];
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
    
    [self.delegate didTapShareButton:self];
}


@end
