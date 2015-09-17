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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //customize view borders
    
    self.socialMediaView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.socialMediaView.layer.borderWidth = 3.0f;
//    self.socialMediaView.
    

    self.socialMediaView.delegate = self; //assign the delegate
}

- (void)commentButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor greenColor];
}
- (void)likeButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor blueColor];
}
- (void)shareButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor redColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
