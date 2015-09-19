//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *customViewContainer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    CustomView *customView = [views firstObject];
    
    [self.customViewContainer addSubview:customView];
    customView.frame = self.customViewContainer.bounds;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
