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

@property (weak, nonatomic) IBOutlet SocialMediaView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.customView.delegate = self;
}


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
