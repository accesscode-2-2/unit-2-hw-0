//
//  BackgroundColorViewController.m
//  PartTwo
//
//  Created by Eric Sze on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "BackgroundColorViewController.h"
#import "CustomView.h"

@interface BackgroundColorViewController ()
@property (weak, nonatomic) IBOutlet UIView *customViewContainer;

@end

@implementation BackgroundColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    CustomView *customView = [views firstObject];
    
    [self.customViewContainer addSubview:customView];
    customView.frame = self.customViewContainer.bounds;
    
}

@end
