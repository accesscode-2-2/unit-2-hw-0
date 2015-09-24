//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Justine Gartner on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView

-(IBAction)likeButtonTapped{
    
    [self.delegate socialMediaViewDidTapLikeButton:self];
    
}

-(IBAction)shareButtonTapped{
    
    [self.delegate socialMediaViewDidTapShareButton:self];
    
}

-(IBAction)commentButtonTapped{
    
    [self.delegate socialMediaViewDidTapCommentButton:self];
    
}


@end
