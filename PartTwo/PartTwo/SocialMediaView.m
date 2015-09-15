//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Elber Carneiro on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.userInteractionEnabled = YES;
        
        NSLog(@"Self.backgroundColor: %@", self.backgroundColor);
    }
    return self;
}

- (void)layoutSubviews {
    self.commentButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.likeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.shareButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.commentButton addTarget:self action:@selector(commentButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.likeButton addTarget:self action:@selector(likeButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.shareButton addTarget:self action:@selector(shareButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self.commentButton setTitle:@"Comment" forState:UIControlStateNormal];
    [self.likeButton setTitle:@"Like" forState:UIControlStateNormal];
    [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];
    
    [self.commentButton sizeToFit];
    [self.likeButton sizeToFit];
    [self.shareButton sizeToFit];
    
    self.commentButton.backgroundColor = [UIColor whiteColor];
    self.likeButton.backgroundColor = [UIColor whiteColor];
    self.shareButton.backgroundColor = [UIColor whiteColor];
    
    self.commentButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.likeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.shareButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addSubview:self.commentButton];
    [self addSubview:self.likeButton];
    [self addSubview:self.shareButton];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.commentButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.commentButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.likeButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.likeButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.commentButton attribute:NSLayoutAttributeTop multiplier:1.0 constant:-16.0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.shareButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.shareButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.commentButton attribute:NSLayoutAttributeBottom multiplier:1.0 constant:+16.0]];
    
}

- (void)commentButtonPressed {
    NSLog(@"Comment pressed");
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (void)likeButtonPressed {
    NSLog(@"Like pressed");
    [self.delegate socialMediaViewDidTapLikeButton:self];
}

- (void)shareButtonPressed {
    NSLog(@"Share pressed");
    [self.delegate socialMediaViewDidTapShareButton:self];
}

@end
