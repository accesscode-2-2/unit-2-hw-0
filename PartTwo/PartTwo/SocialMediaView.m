//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Xiulan Shi on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView

- (IBAction)likeButtonTapped:(UIButton *)sender {
    
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)commentButtonTapped:(UIButton *)sender {
    
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
    
    [self.delegate socialMediaViewDidTapShareButton:self];
}

@end
