//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <SocialMediaDelegate>
@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet CustomView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customView.delegate = self;
    
    
}

-(void)socialMediaViewDidTapLikeButton:(CustomView *)view {
    self.backgroundView.backgroundColor = [UIColor blueColor];
}
-(void)socialMediaViewDidTapCommentButton:(CustomView *)view {
    self.backgroundView.backgroundColor = [UIColor greenColor];
}
-(void)socialMediaViewDidTapShareButton:(CustomView *)view {
    self.backgroundView.backgroundColor = [UIColor redColor];
}

@end
