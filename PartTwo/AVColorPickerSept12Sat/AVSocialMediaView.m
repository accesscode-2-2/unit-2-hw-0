//
//  AVSocialMediaView.m
//  AVColorPickerSept12Sat
//
//  Created by Ayuna Vogel on 9/15/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import "AVSocialMediaView.h"
#import "AVColorPickerCommunicationProtocol.h"

@implementation AVSocialMediaView


- (IBAction)redButtonTapped:(id)sender {
    UIColor *color = [UIColor redColor];
    [self.delegate didSelectColor:color];
}
- (IBAction)greenButtonTapped:(id)sender {
    UIColor *color = [UIColor greenColor];
    [self.delegate didSelectColor:color];
}
- (IBAction)blueButtonTapped:(id)sender {
    UIColor *color = [UIColor blueColor];
    [self.delegate didSelectColor:color];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
