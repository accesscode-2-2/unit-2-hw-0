//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaDelegate.h"
#import "SocialMediaView.h"

@interface ViewController () <UINavigationControllerDelegate, SocialMediaDelegate>

@property (weak, nonatomic) IBOutlet SocialMediaView *view;

@end

@implementation ViewController

@dynamic view;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.delegate = self;
}


-(void)socialMediaViewDidTapLikeButton:(CIColor *)likeColor {
    self.view.backgroundColor = [UIColor colorWithCIColor:likeColor];
    
}
- (void)socialMediaViewDidTapCommentButton:(CIColor *)commentColor {
    
}
- (void)socialMediaViewDidTapShareButton:(CIColor *)shareColor {
    
}

- (void)testing: (NSString *)stringTest{
    NSLog(@"%@",stringTest);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
