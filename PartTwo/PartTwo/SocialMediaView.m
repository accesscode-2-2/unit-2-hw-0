//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Chris David on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView


- (IBAction)commentButtonTapped:(UIButton *)sender {
    [self.delegate tapCommentButton:self];
}

- (IBAction)likeButtonTapped:(UIButton *)sender {
    [self.delegate tapLikeButton:self];
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
    [self.delegate tapShareButton:self];
}

@end
