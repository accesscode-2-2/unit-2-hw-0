//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"
#import "ButtonPressedProtocol.h"

@interface ViewController () <ButtonPressedProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   SocialMediaView *customView = [[SocialMediaView alloc] init];
    
    // assign delegate
    customView.delegate = self;

}

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view {
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view {
     self.view.backgroundColor = [UIColor redColor];
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view {
     self.view.backgroundColor = [UIColor greenColor];
    
}

@end
