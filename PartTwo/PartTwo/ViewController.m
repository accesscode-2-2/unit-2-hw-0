//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"
#import "ButtonPressedProtocol.h"

@interface ViewController () <ButtonPressedProtocol>

//@property (nonatomic) id selectedColor;
@property (strong, nonatomic) IBOutlet UIView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   SocialMediaView *customView = [[SocialMediaView alloc] init];
    
    // assign delegate
    customView.delegate = self;
 
    self.myView.backgroundColor = [UIColor blackColor];
    
}

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view {

    self.myView.backgroundColor = view;
    
}

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view {
    self.myView.backgroundColor = view;
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view {
  self.myView.backgroundColor = view; }

@end
