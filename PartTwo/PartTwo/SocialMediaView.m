//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Z on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@interface SocialMediaView()

@end

@implementation SocialMediaView

- (IBAction)likeButtonPressed{
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)commentButtonPressed{
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (IBAction)shareButtonPressed{
    [self.delegate socialMediaViewDidTapShareButton:self];
}

@end