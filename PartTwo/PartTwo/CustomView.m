//
//  CustomView.m
//  PartTwo
//
//  Created by Natalia Estrella on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CustomView.h"



@interface CustomView ()
@property (nonatomic) UIButton *selectedButton;

@property (weak, nonatomic) IBOutlet UIButton *likeButton;

@property (weak, nonatomic) IBOutlet UIButton *commentButton;

@property (weak, nonatomic) IBOutlet UIButton *shareButton;

@end


@implementation CustomView

- (IBAction)commentButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapCommentButton:self];
}

- (IBAction)likeButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapLikeButton:self];
    
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
    [self.delegate socialMediaViewDidTapShareButton:self];
    
}

@end
