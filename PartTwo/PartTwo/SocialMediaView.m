//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Eric Sanchez on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView 

- (IBAction)commentButtonTapped:(UIButton*)sender{

//[self.delegate socialMediaViewDidTapCommentButton:self];
[self.delegate socialMediaViewDidTapCommentButton:self];
	NSLog(@"Comment");
	
	
	

}

- (IBAction)likeButtonTapped:(UIButton*)sender{
//[self.delegate socialMediaViewDidTapLikeButton:self];
[self.delegate socialMediaViewDidTapLikeButton:self];
	NSLog(@"Like");
	
	
}

- (IBAction)shareButtonTapped:(UIButton*)sender{
//[self.delegate socialMediaViewDidTapShareButton:self];
[self.delegate socialMediaViewDidTapShareButton:self];
	NSLog(@"Sharing is caring");

}


@end


