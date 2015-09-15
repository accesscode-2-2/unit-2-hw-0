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

@property (nonatomic) id selectedColor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
 
    self.view.backgroundColor = [UIColor blackColor];
    
}

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view {
    //  self.view.backgroundColor
    
}

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view {
    //  self.view.backgroundColor
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view {
    //  self.view.backgroundColor
}

@end
