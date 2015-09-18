//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaDelegate.h"
#import "CustomView.h"
#import "BackgroundGradient.h"

@interface ViewController () <UINavigationControllerDelegate, SocialMediaDelegate>

@property (weak, nonatomic) IBOutlet UIView *customView;

@property (nonatomic) CAGradientLayer *bgLayer;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *views = [[NSBundle mainBundle]loadNibNamed:@"CustomView"owner:self options:nil];
    
    CustomView *customView = [views firstObject];
    
    [self.customView addSubview:customView];
    
    customView.frame = self.customView.bounds;
    
    customView.delegate = self;
    
}



- (void)socialMediaViewDidTapCommentButton {
    [self.bgLayer removeFromSuperlayer];
    self.bgLayer = [BackgroundGradient greenGradient];
    self.bgLayer.frame = self.view.bounds;
    [self.view.layer insertSublayer:self.bgLayer atIndex:0];
}

-(void)socialMediaViewDidTapLikeButton {
    [self.bgLayer removeFromSuperlayer];
    self.bgLayer = [BackgroundGradient blueGradient];
    self.bgLayer.frame = self.view.bounds;
    [self.view.layer insertSublayer:self.bgLayer atIndex:0];
}
- (void)socialMediaViewDidTapShareButton {
    [self.bgLayer removeFromSuperlayer];
    self.bgLayer = [BackgroundGradient redGradient];
    self.bgLayer.frame = self.view.bounds;
    [self.view.layer insertSublayer:self.bgLayer atIndex:0];
}

- (void)testing: (NSString *)stringTest{
    NSLog(@"%@",stringTest);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
