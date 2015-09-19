//
//  xibViewController.m
//  PartTwo
//
//  Created by Diana Elezaj on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "xibViewController.h"
#import "xibSocialMediaView.h"
#import "SocialMediaViewProtocol.h"


@interface xibViewController ()
@property (weak, nonatomic) IBOutlet UIView *customView;

@end

@implementation xibViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"xibSocialMediaView" owner:self options:nil];
    xibSocialMediaView *SMVContainer = [views firstObject];
    
    
    [self.customView addSubview:SMVContainer];
    SMVContainer.frame = self.customView.bounds;
    
    SMVContainer.delegate = self;
    self.view.backgroundColor = [UIColor colorWithRed:0.36 green:0.64 blue:0.24 alpha:1.0];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)commentButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor colorWithRed:0.36 green:0.64 blue:0.24 alpha:1.0];
}
- (void)likeButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor colorWithRed:0.23 green:0.42 blue:0.71 alpha:1.0];
}
- (void)shareButtonTapped:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor colorWithRed:0.87 green:0.20 blue:0.20 alpha:1.0];
}

@end
