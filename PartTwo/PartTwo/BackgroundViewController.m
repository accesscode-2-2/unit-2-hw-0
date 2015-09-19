//
//  BackgroundViewController.m
//  PartTwo
//
//  Created by Bereket  on 9/18/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "BackgroundViewController.h"
#import "CustomView.h"
#import "CustomViewDelegate.h"

@interface BackgroundViewController ()  <CustomViewDelegate>

@property (strong, nonatomic) IBOutlet UIView *customViewContainer;
@end

@implementation BackgroundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    self.customView = [views firstObject];
    
    [self.customViewContainer addSubview:self.customView];
    self.customView.frame = self.customViewContainer.bounds;
    
    self.customView.delegate = self;
    

}


- (void)socialMediaViewDidTapLikeButton:(CustomView *)view {
    self.view.backgroundColor = [UIColor blueColor];
}
- (void)socialMediaViewDidTapCommentButton:(CustomView *)view {
    self.view.backgroundColor = [UIColor greenColor];
}
- (void)socialMediaViewDidTapShareButton:(CustomView *)view{
    self.view.backgroundColor = [UIColor redColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
