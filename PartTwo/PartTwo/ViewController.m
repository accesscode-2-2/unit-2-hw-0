//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"
#import "SocialMediaDelegate.h"

@interface ViewController () <SocialMediaDelegate>

@property (weak, nonatomic) IBOutlet UIView *customViewController;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSArray *views = [[NSBundle mainBundle]loadNibNamed:@"CustomView" owner:self options:nil];
    
    SocialMediaView *customView = [views firstObject];
    
    [self.customViewController addSubview:customView];
    
    customView.frame = self.customViewController.bounds;
    
    customView.delegate = self;
    
}
- (void) socialMediaViewDidTapLikeButton:(SocialMediaView*)view{
    
    self.view.backgroundColor = [UIColor blueColor];
}
- (void)socialMediaViewDidTapCommentButton:(SocialMediaView*)view{
    
    self.view.backgroundColor = [UIColor greenColor];
    
}
- (void)socialMediaViewDidTapShareButton:(SocialMediaView*)view{
    
    self.view.backgroundColor = [UIColor redColor];
}




@end
