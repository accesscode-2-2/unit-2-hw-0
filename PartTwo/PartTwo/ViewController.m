//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *customViewContainer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CustomView *customView = [[CustomView alloc] init];

    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    customView = [views firstObject];
    [self.customViewContainer addSubview: customView];
    customView.frame = self.customViewContainer.bounds;
    customView.delegate = self;
}

-(void)socialMediaViewDidTapLikeButton:(CustomView *)view {
    self.view.layer.backgroundColor = [UIColor blueColor].CGColor;
    NSLog(@"changed to blue");
}

-(void)socialMediaViewDidTapCommentButton:(CustomView *)view {
    self.view.layer.backgroundColor = [UIColor greenColor].CGColor;
    NSLog(@"changed to green");
    
}

-(void)socialMediaViewDidTapShareButton:(CustomView *)view {
    self.view.layer.backgroundColor = [UIColor redColor].CGColor;
    NSLog(@"changed to red");
    
}
    
-(void)sendString:(NSString *)string {
    
    NSLog(@"%@", string);
}



 












@end
