//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"
#import "SocialMediaViewControllerDelegate.h"

@interface ViewController () <SocialMediaViewControllerDelegate>
@property (weak, nonatomic) IBOutlet SocialMediaView *SocialMediaView;

@end

@implementation ViewController

-(void)viewDidLoad{
	[super viewDidLoad]; //must call [super] when making a change to native method
	self.SocialMediaView.delegate = self;
	//Must set the delegate to self.
	
}


- (void) socialMediaViewDidTapLikeButton:(SocialMediaView *)view{
	self.view.backgroundColor = [UIColor blueColor];
	
}


- (void) socialMediaViewDidTapCommentButton:(SocialMediaView *)view{
	self.view.backgroundColor = [UIColor greenColor];
}

- (void) socialMediaViewDidTapShareButton:(SocialMediaView *)view{
	self.view.backgroundColor = [UIColor redColor];
}


@end
