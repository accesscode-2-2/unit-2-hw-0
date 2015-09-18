//
//  CustomView.m
//  PartTwo
//
//  Created by Fatima Zenine Villanueva on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
- (IBAction)comment:(id)sender {
    NSLog(@"comment button");
    [self.delegate testing:@"This is the color blue from the delegate"];
    [self.delegate socialMediaViewDidTapCommentButton];
    NSLog(@"This is the delegate: %@", self.delegate);
}
- (IBAction)like:(id)sender {
    NSLog(@"like button");
    [self.delegate socialMediaViewDidTapLikeButton];
    [self.delegate testing:@"This is the color orange from the delegate"];


}
- (IBAction)share:(id)sender {
    NSLog(@"share button");
    [self.delegate socialMediaViewDidTapShareButton];
    [self.delegate testing:@"This is the color pink from the delegate"];


}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
