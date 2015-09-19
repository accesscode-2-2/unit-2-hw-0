//
//  AVSocialMediaView.m
//  PartTwo
//
//  Created by Artur Lan on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "AVSocialMediaView.h"
#import "AVColorPickerCommProtocol.h"


@implementation AVSocialMediaView

- (IBAction)commentButtonTapped:(id)sender {
    UIColor *color = [UIColor redColor];
    [self.delegate didSelectColor:color];
}
- (IBAction)likeButtonTapped:(id)sender {
    UIColor *color = [UIColor greenColor];
    [self.delegate didSelectColor:color];
}
- (IBAction)shareButtonTapped:(id)sender {
    UIColor *color = [UIColor blueColor];
    [self.delegate didSelectColor:color];
}

@end
