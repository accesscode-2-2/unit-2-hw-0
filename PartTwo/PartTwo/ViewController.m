//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"

@interface ViewController () 


@property (strong, nonatomic) IBOutlet SocialMediaView *socialMediaView;


@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
        
    self.socialMediaView.delegate = self;
    NSLog(@"%@",self.socialMediaView.delegate);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

#pragma mark - Social Media View delegate methods

//like button = blue, comment button = green, share button = red
- (void)socialMediaViewDidTapCommentButton:(id)view{
    self.view.backgroundColor = [UIColor greenColor];

}

- (void)socialMediaViewDidTapLikeButton:(id)view{
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)socialMediaViewDidTapShareButton:(id)view{
    self.view.backgroundColor = [UIColor redColor];
}


@end
