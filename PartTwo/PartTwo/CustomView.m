//
//  CustomView.m
//  PartTwo
//
//  Created by Jackie Meggesto on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

-(IBAction)commentButtonTapped:(id)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
}
-(IBAction)likeButtonTapped:(id)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
}
-(IBAction)shareButtonTapped:(id)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
}




@end
