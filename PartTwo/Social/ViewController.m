//
//  ViewController.m
//  Social
//
//  Created by Varindra Hart on 9/18/15.
//  Copyright © 2015 Varindra Hart. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController () <CustomViewProtocol>
@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet UIView *customViewContainer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *views = [[NSBundle mainBundle]loadNibNamed:@"View" owner:self options:nil];
    CustomView *customView = [views firstObject];
    customView.delegate = self;
    
    [self.customViewContainer addSubview:customView];
    customView.frame = self.customViewContainer.bounds;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma CustomViewProtocol Methods

- (void)socialMediaViewDidTapCommentButton:(CustomView *)view{
    [self.backgroundView setBackgroundColor:[UIColor greenColor]];
}

- (void)socialMediaViewDidTapLikeButton:(CustomView *)view{
    self.backgroundView.backgroundColor = [UIColor blueColor];
}

- (void)socialMediaViewDidTapShareButton:(CustomView *)view{
    self.backgroundView.backgroundColor = [UIColor redColor];
}
@end
