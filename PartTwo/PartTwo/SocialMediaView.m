//
//  SocialMediaView.m
//  PartTwo
//
//  Created by Diana Elezaj on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMediaView.h"
#import "ViewController.h"
#import "SocialMediaViewProtocol.h"

@interface SocialMediaView ()


@end

@implementation SocialMediaView

-(IBAction)commentTapped:(UIButton*)sender {
    //self is SocialMediaView
    //delegate is ViewController
    
    [self.delegate commentButtonTapped:self];
    NSLog(@"UIView Comment tapped");
}

-(IBAction)likeTapped:(UIButton*)sender {
    [self.delegate likeButtonTapped:self];
    NSLog(@"UIView like tapped");

}
-(IBAction)shareTapped:(UIButton*)sender {
    [self.delegate shareButtonTapped:self];
    NSLog(@"UIView share tapped");
}
@end
