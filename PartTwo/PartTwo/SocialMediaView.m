//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Fatima Zenine Villanueva on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"
#import "ViewController.h"

@implementation SocialMediaView



@synthesize delegate;



- (IBAction)comment:(id)sender {
    if ( [delegate respondsToSelector:@selector(testing:)] ) {
        [self.delegate testing:@"This is the color blue from the delegate"];
        CIColor *color = [CIColor colorWithString:@"0.0 0.0 1.0 1.0"];
        [self.delegate socialMediaViewDidTapCommentButton:color];
        NSLog(@"This is the delegate: %@", self.delegate);
    }
}

- (IBAction)like:(id)sender {
     NSLog(@"%@", self.delegate);
    NSLog(@"The like button is working");
}

- (IBAction)share:(id)sender {
     NSLog(@"%@", self.delegate);
    NSLog(@"The share button is working");
}

@end
