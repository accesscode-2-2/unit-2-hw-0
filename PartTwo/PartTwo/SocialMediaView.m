//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Felicia Weathers on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"
#import "ViewController.h"
#import "SocialMediaDelegate.h"

@implementation SocialMediaView

- (IBAction)commentButton:(UIButton *)sender {
    
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)likeButton:(UIButton *)sender {
    
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (IBAction)sharebutton:(UIButton *)sender {
    
    [self.delegate socialMediaViewDidTapShareButton:self];
    
}

@end
