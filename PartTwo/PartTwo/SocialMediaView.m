//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Shena Yoshida on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"

@interface SocialMediaView ()

@property (nonatomic) UIColor *currentColor;

@end

@implementation SocialMediaView

    
   // self.backgroundColor = [UIColor blueColor];


- (IBAction)commentButtonTapped:(UIButton *)sender {
    self.currentColor = [UIColor redColor];
 //   self.backgroundColor = self.currentColor;
    NSLog(@"%@", self.currentColor); // test it!
    
    [self.delegate socialMediaViewDidTapCommentButton:self];
    
}

- (IBAction)likeButtonTapped:(UIButton *)sender {
     self.currentColor = [UIColor blueColor];
 //   self.backgroundColor = self.currentColor;
    NSLog(@"%@", self.currentColor); // test it!
}

- (IBAction)shareButtonTapped:(UIButton *)sender {
     self.currentColor = [UIColor greenColor];
 //   self.backgroundColor = self.currentColor;
    NSLog(@"%@", self.currentColor); // test it!
}



@end
