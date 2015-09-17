//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"
#import "SocialMediaViewProtocol.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController () <SocialMediaViewProtocol>
@property (weak, nonatomic) IBOutlet SocialMediaView *socialMediaView;
@property (weak, nonatomic) IBOutlet UIButton *commentButtonProperty;
@property (weak, nonatomic) IBOutlet UIButton *likeButtonProperty;
@property (weak, nonatomic) IBOutlet UIButton *shareButtonProperty;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //customize view borders
    self.socialMediaView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.socialMediaView.layer.borderWidth = 3.0f;
    
    //buttons colors
    self.commentButtonProperty.backgroundColor = [UIColor colorWithRed:0.36 green:0.64 blue:0.24 alpha:1.0];
    self.likeButtonProperty.backgroundColor = [UIColor colorWithRed:0.23 green:0.42 blue:0.71 alpha:1.0];
    self.shareButtonProperty.backgroundColor = [UIColor colorWithRed:0.87 green:0.20 blue:0.20 alpha:1.0];
    
    //set view color green, by default
    self.view.backgroundColor = [UIColor colorWithRed:0.36 green:0.64 blue:0.24 alpha:1.0];
    
    //assign the delegate
    self.socialMediaView.delegate = self;
    }

- (void)commentButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor colorWithRed:0.36 green:0.64 blue:0.24 alpha:1.0];
}
- (void)likeButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor colorWithRed:0.23 green:0.42 blue:0.71 alpha:1.0];
}
- (void)shareButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor colorWithRed:0.87 green:0.20 blue:0.20 alpha:1.0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
