//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Elber Carneiro on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@interface SocialMediaView()
@property (strong, nonatomic) UIButton *commentButton;
@property (strong, nonatomic) UIButton *likeButton;
@property (strong, nonatomic) UIButton *shareButton;
@end

@implementation SocialMediaView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)layoutSubviews {
    // init
    self.commentButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.likeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.shareButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    // set actions
    [self.commentButton addTarget:self action:@selector(commentButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.likeButton addTarget:self action:@selector(likeButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.shareButton addTarget:self action:@selector(shareButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    // set titles
    [self.commentButton setTitle:@"Comment" forState:UIControlStateNormal];
    [self.likeButton setTitle:@"Like" forState:UIControlStateNormal];
    [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];
    
    // turn this off to avoid constraint conflicts
    self.commentButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.likeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.shareButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    // add them as subviews
    [self addSubview:self.commentButton];
    [self addSubview:self.likeButton];
    [self addSubview:self.shareButton];
    
    // set constraints... FUN!
    // MIDDLE BUTTON
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.likeButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:0.34 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.likeButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.likeButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.likeButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
    
    // TOP BUTTON
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.commentButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:0.33 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.commentButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.commentButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.commentButton attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.likeButton attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    
    // BOTTOM BUTTON
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.shareButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:0.33 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.shareButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.shareButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.shareButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.likeButton attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
}

#pragma mark - UIButton action methods
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
