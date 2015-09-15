//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Mesfin Bekele Mekonnen on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@implementation SocialMediaView

//- (id)initWithFrame:(CGRect)frame{
//    if(self == [super initWithFrame:frame]){
//        //
//    }
//    return self;
//}

- (IBAction)commentButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
    NSLog(@"Comment section, delegate is: %@",self.delegate);
}

- (IBAction)likeButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
    NSLog(@"Like section, delegate is: %@",self.delegate);
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
    NSLog(@"Share section, delegate is: %@",self.delegate);
}


@end
