//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Felicia Weathers on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"
#import "ViewController.h"
#import "SocialMediaDelegate.h"

@implementation SocialMediaView

- (IBAction)commentButton:(UIButton *)sender {
    
    [self.delegate changeBackgroundColour];
}

- (IBAction)likeButton:(UIButton *)sender {
    
}

- (IBAction)sharebutton:(UIButton *)sender {
    
}

@end
