//
//  ViewController.m
//  PartTwo
//
//  Created by Henna on 9/18/15.
//  Copyright (c) 2015 Henna. All rights reserved.
//

#import "ViewController.h"
#import "socialView.h"
#import "socialProtocol.h"

@interface ViewController () <socialProtocol>
@property (strong, nonatomic) IBOutlet UIView *background;
@property (weak, nonatomic) IBOutlet socialView *socialMediaView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.socialMediaView.delegate = self;
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didTapLikeButton: (socialView *)view{
     self.background.backgroundColor = [UIColor blueColor];
}

- (void)didTapCommentButton: (socialView *)view{
     self.background.backgroundColor = [UIColor redColor];
}

- (void)didTapShareButton:(socialView *)view{
     self.background.backgroundColor = [UIColor greenColor];
}

@end
