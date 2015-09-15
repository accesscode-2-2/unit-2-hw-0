//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"

@class SocialMediaView;

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet SocialMediaView *SocialMediaView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.SocialMediaView.delegate = self;
    
}

#pragma mark - SocialMediaDelegate protocol methods

-(void)socialMediaViewDidTapLikeButton:(id)view{
    
    NSLog(@"like button tapped");
    
    self.backgroundView.backgroundColor = [UIColor blueColor];
}

-(void)socialMediaViewDidTapCommentButton:(id)view{
    
    NSLog(@"comment button tapped");
    
    self.backgroundView.backgroundColor = [UIColor greenColor];
}

-(void)socialMediaViewDidTapShareButton:(id)view{
    
    NSLog(@"share button tapped");
    
    self.backgroundView.backgroundColor = [UIColor redColor];
}

@end
