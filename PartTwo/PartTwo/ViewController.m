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

@property (strong, nonatomic) IBOutlet SocialMediaView *socialMediaView; // create property for delegate reference (this is the custom view)

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.socialMediaView.delegate = self;  // assign delegate to the custom view property
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(socialMediaViewDidTapShareButton:) name:MyCustomNotificationName object:nil]; // add observer for didTapShareButton notification

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
