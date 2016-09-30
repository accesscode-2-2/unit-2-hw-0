//
//  xibSocialMediaView.m
//  PartTwo
//
//  Created by Diana Elezaj on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "xibSocialMediaView.h"
#import "xibViewController.h"
#import "SocialMediaViewProtocol.h"


@implementation xibSocialMediaView

-(IBAction)commentTapped:(UIButton*)sender {
    [self.delegate commentButtonTapped:self];
    NSLog(@"XIB Comment tapped");
}
- (IBAction)likeTapped:(UIButton *)sender {
    [self.delegate likeButtonTapped:self];
    NSLog(@"XIB like tapped");
}
- (IBAction)shareTapped:(UIButton *)sender {
    [self.delegate shareButtonTapped:self];
    NSLog(@"XIB share tapped");
}


@end
