//
//  CustomSocialMediaViewController.m
//  PartTwo
//
//  Created by Justine Gartner on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

//facebook blue = rgb(59,89,152)
//path red = rgb(238,52,35)
//vine green = rgb(0,180,136)

#import "CustomSocialMediaViewController.h"
#import "CustomSocialMediaView.h"

@class CustomSocialMediaView;

@interface CustomSocialMediaViewController ()

@property (nonatomic, weak) IBOutlet UIView *customViewContainer;
@property (strong, nonatomic) IBOutlet UIView *backgroundView;

@property (nonatomic) UIColor *facebookBlue;
@property (nonatomic) UIColor *pathRed;
@property (nonatomic) UIColor *vineGreen;

@end

@implementation CustomSocialMediaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpColors];
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomSocialMediaView" owner:self options:nil];
    
    CustomSocialMediaView *customView = [views firstObject];
    
    [self.customViewContainer addSubview:customView];
    
    customView.frame = self.customViewContainer.bounds;
    
    customView.delegate = self;
    
}

-(void)setUpColors{
    
    self.facebookBlue = [UIColor colorWithRed:59.0/255.0 green:89.0/255.0 blue:152.0/255.0 alpha:1.0];
    self.pathRed = [UIColor colorWithRed:238.0/255.0 green:52.0/255.0 blue:35.0/255.0 alpha:1.0];
    self.vineGreen = [UIColor colorWithRed:0.0/255.0 green:180.0/255.0 blue:136.0/255.0 alpha:1.0];
    
}

#pragma mark - CustomSocialMediaDelegate methods

-(void)customSocialMediaViewDidTapCommentButton:(CustomSocialMediaView *)view{
    self.backgroundView.backgroundColor = self.vineGreen;
}

-(void)customeSocialMediaViewDidTapLikeButton:(CustomSocialMediaView *)view{
    self.backgroundView.backgroundColor = self.facebookBlue;
}

-(void)customSocialMediaViewDidTapShareButton:(CustomSocialMediaView *)view{
    self.backgroundView.backgroundColor = self.pathRed;
}

@end
