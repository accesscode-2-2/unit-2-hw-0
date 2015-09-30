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

- (void)didTapLikeButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didTapShareButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)didTapCommentButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor blueColor];
}

@end
