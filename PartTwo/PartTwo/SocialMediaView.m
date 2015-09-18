//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Shena Yoshida on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

NSString * const MyCustomNotificationName = @"MyCustomNotification"; // declare constant for notification and set string

@interface SocialMediaView ()

@end

@implementation SocialMediaView

// required delegate methods:
- (IBAction)commentButtonTapped:(UIButton *)sender { 
    [self.delegate socialMediaViewDidTapCommentButton:self]; // connect delegate, when this button is tapped, pass message.
}

- (IBAction)likeButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
   // [self.delegate socialMediaViewDidTapShareButton:self];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:MyCustomNotificationName object:nil]; // broadcasting notification
}

@end
