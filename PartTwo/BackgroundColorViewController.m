//
//  BackgroundColorViewController.m
//  PartTwo
//
//  Created by Kaisha Jones on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "BackgroundColorViewController.h"
#import "SecondaryView.h"
#import "SecondaryViewDelegate.h"

@interface BackgroundColorViewController () <SecondaryViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *secondaryViewContainer;
@property (nonatomic) SecondaryView *secondaryView;

@end

@implementation BackgroundColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"SecondaryView" owner:self options:nil];
    self.secondaryView = [views firstObject];
    
    [self.secondaryViewContainer addSubview:self.secondaryView];
    self.secondaryView.frame = self.secondaryViewContainer.bounds;
    
    self.secondaryView.delegate = self;
    
}

- (void)socialMediaViewDidTapLikeButton:(SecondaryView *)view {
    self.view.backgroundColor = [UIColor blueColor];
}
- (void)socialMediaViewDidTapCommentButton:(SecondaryView *)view {
    self.view.backgroundColor = [UIColor greenColor];
}
- (void)socialMediaViewDidTapShareButton:(SecondaryView *)view{
    self.view.backgroundColor = [UIColor redColor];
}

@end

