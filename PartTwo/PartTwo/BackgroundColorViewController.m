//
//  BackgroundColorViewController.m
//  PartTwo
//
//  Created by Eric Sze on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "BackgroundColorViewController.h"
#import "CustomView.h"
#import "CustomViewDelegate.h"

@interface BackgroundColorViewController () <CustomViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *customViewContainer;
@property (nonatomic) CustomView *customView;

@end

@implementation BackgroundColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    self.customView = [views firstObject];
    
    [self.customViewContainer addSubview:self.customView];
    self.customView.frame = self.customViewContainer.bounds;
    
    self.customView.delegate = self;
    
}

- (void)socialMediaViewDidTapLikeButton:(CustomView *)view {
    self.view.backgroundColor = [UIColor blueColor];
}
- (void)socialMediaViewDidTapCommentButton:(CustomView *)view {
    self.view.backgroundColor = [UIColor greenColor];
}
- (void)socialMediaViewDidTapShareButton:(CustomView *)view{
    self.view.backgroundColor = [UIColor redColor];
}

@end
