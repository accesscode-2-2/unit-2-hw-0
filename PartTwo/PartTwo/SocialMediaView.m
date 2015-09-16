//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Zoufishan Mehdi on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"


@implementation SocialMediaView

- (IBAction)comment:(id)sender {
    
         [self.delegate socialMediaViewDidTapCommentButton:[CIColor colorWithString:@"0.0 1.0 0.8 1.0"]];
      NSLog(@"green");
}


- (IBAction)like:(id)sender {
    
        [self.delegate socialMediaViewDidTapLikeButton:[CIColor colorWithString:@"0.1 0.5 0.8 1.0"]];
      NSLog(@"blue");
}


- (IBAction)share:(id)sender {
     [self.delegate socialMediaViewDidTapShareButton:[CIColor colorWithString:@"1.0 0.0 0.0 0.5"]];
      NSLog(@"red");
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
