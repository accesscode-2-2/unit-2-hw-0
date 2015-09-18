//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Charles Kang  on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"


@implementation SocialMediaView



- (IBAction)likeButtonTapped:(UIButton*)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
    NSLog(@"liked!");
}

- (IBAction)commentButtonTapped:(UIButton*)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
    NSLog(@"commented!");
}

- (IBAction)shareButtonTapped:(UIButton*)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
    NSLog(@"shared!");
    
}

@end
