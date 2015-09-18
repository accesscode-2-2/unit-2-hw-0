//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Jason Wang on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"
#import "ViewController.h"


@implementation SocialMediaView


- (IBAction)commentButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

-(IBAction)likeButtonTapped:(UIButton *)sender {
    
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

-(IBAction)shareButtonTapped:(UIButton*)sender {
    
    [self.delegate socialMediaViewDidTapShareButton:self];
}


@end
