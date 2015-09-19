//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Christella on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"
#import "SocialMediaBackgroundProtocol.h"



@implementation SocialMediaView



#pragma mark - Colors Delegate

-(void)colorSelection:(UIColor *)selectedColor {
    
    SocialMediaView *socialmediaview = [[SocialMediaView alloc] init];
    
    socialmediaview.backgroundColor = selectedColor;
    
}


@end
