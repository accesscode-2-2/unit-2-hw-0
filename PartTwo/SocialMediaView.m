//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Jamaal Sedayao on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView


- (IBAction)likeButtonTapped:(id)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)commentButtonTapped:(id)sender{
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (IBAction)shareButtonTapped:(id)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
}


@end
