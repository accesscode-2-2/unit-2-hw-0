//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "CustomViewDelegate.h"
#import "CustomView.h"


@interface ViewController () <CustomViewDelegate>
@property (weak, nonatomic) IBOutlet CustomView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.customView.delegate = self;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)socialMediaViewDidTapLikeButton:(CustomView *)view {
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)socialMediaViewDidTapCommentButton:(CustomView *)view {
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)socialMediaViewDidTapShareButton:(CustomView *)view {
    self.view.backgroundColor = [UIColor redColor];

}

@end
