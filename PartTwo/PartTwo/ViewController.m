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


@property (strong, nonatomic) IBOutlet SocialMediaView *socialMediaView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.socialMediaView.delegate = self;
}

#pragma mark -Methods 

- (void)tapCommentButton:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)tapLikeButton:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)tapShareButton:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor redColor];
}


@end
