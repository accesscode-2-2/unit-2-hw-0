//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"
#import "SocialMediaDelegate.h"

@interface ViewController () <SocialMediaDelegate>

@end

@implementation ViewController

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view {
    NSLog(@"Like Button Tapped");
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view {
    NSLog(@"Comment Button Tapped");
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view {
    NSLog(@"Share Button Tapped");
    self.view.backgroundColor = [UIColor redColor];
}

@end
