//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Christian Maldonado on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"
#import "SocialDelegateProtocol.h"

@implementation SocialMediaView

-(IBAction)commentButtonTapped:(id)sender{
    [self.delegate socialMediaViewDidTapCommentButton:self];
}
-(IBAction)likeButtonTapped:(id)sender{
    [self.delegate socialMediaViewDidTapLikeButton:self];
}
-(IBAction)shareButtonTapped:(id)sender{
    [self.delegate socialMediaViewDidTapShareButton:self];
}
@end
