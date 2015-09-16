//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *CustomViewContainer;

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    
    CustomView *customView = [views firstObject];
    
    [self.CustomViewContainer addSubview:customView];
    customView.frame = self.CustomViewContainer.bounds;
}


@end
