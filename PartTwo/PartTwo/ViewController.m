//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet SocialMediaView *socialMediaView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect subviewDimensions = CGRectMake(0, 0, 0, 0);
    self.socialMediaView = [[SocialMediaView alloc] initWithFrame:subviewDimensions];
    NSLog(@"%@", self.socialMediaView);
    
    self.socialMediaView.delegate = self;
    self.socialMediaView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.socialMediaView];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.socialMediaView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.socialMediaView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:0.5 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.socialMediaView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.socialMediaView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
}

#pragma mark - SocialMediaViewDelegate methods
- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor greenColor];
    [self.view setNeedsDisplay];
}

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor redColor];
    [self.view setNeedsDisplay];
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor purpleColor];
    [self.view setNeedsDisplay];
}

@end
