//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "protocol.h"
#import "SocialMediaView.h"

@interface ViewController () <protocol>

@property (weak, nonatomic) IBOutlet SocialMediaView *SocialMediaView;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.SocialMediaView.delegate = self;
    
}


- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view {
    
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"You like this");
}


- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view {
    
    self.view.backgroundColor = [UIColor greenColor];
    NSLog(@"You comment on this");
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view {
    
    self.view.backgroundColor = [UIColor purpleColor];
    NSLog(@"You share this!");
}

@end
