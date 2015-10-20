//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMedia.h"
#import "SocialMediaDelegate.h"

@interface ViewController () <SocialMediaDelegate>

@property (weak, nonatomic) IBOutlet SocialMedia *socialView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.socialView.delegate = self;
    
   
}

- (void)tappedCommentButton:(SocialMedia *)view
{
    self.view.backgroundColor = [UIColor redColor];
}

- (void)tappedLikeButton:(SocialMedia *)view
{
    self.view.backgroundColor = [UIColor greenColor];

}

- (void)tappedShareButton:(SocialMedia *)view{
    self.view.backgroundColor = [UIColor blueColor];
}

@end
