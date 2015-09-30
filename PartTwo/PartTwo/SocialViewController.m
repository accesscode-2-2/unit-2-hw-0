//
//  SocialViewController.m
//  PartTwo
//
//  Created by Umar on 9/30/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialViewController.h"
#import "PartTwoDelegate.h"
#import "SocialMediaView.h"

@interface SocialViewController () <PartTwoDelegate>

@property (weak, nonatomic) IBOutlet SocialMediaView *socialView;

@end

@implementation SocialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.socialView.delegate = self;
}

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor redColor];
}

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor greenColor];
}

@end
