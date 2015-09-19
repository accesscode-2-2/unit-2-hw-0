//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "AVColorPickerCommProtocol.h"
#import "AVSocialMediaView.h"

@interface ViewController () <AVColorPickerCommProtocol>

@property (weak, nonatomic) IBOutlet AVSocialMediaView *customView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customView.delegate = self;
    
}

-(void)didSelectColor:(UIColor *)color {
    self.view.backgroundColor = color;
}
@end
