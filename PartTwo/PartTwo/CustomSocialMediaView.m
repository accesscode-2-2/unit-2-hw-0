//
//  CustomSocialMediaView.m
//  PartTwo
//
//  Created by Justine Gartner on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CustomSocialMediaView.h"

@implementation CustomSocialMediaView


- (IBAction)commentButtonTapped:(UIButton *)sender {
    
    [self.delegate customSocialMediaViewDidTapCommentButton:self];
}


- (IBAction)likeButtonTapped:(UIButton *)sender {
    
    [self.delegate customSocialMediaViewDidTapLikeButton:self];
}


- (IBAction)shareButtonTapped:(UIButton *)sender {
    
    [self.delegate customSocialMediaViewDidTapShareButton:self];
}


@end
