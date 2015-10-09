//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view{
    //NSLog(@"like");
    self.view.backgroundColor = [UIColor redColor];

}
-(void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view{
    //NSLog(@"comment");
    self.view.backgroundColor = [UIColor greenColor];

}
-(void)socialMediaViewDidTapShareButton:(SocialMediaView *)view{
    //NSLog(@"share");
    self.view.backgroundColor = [UIColor blueColor];

}


@end
