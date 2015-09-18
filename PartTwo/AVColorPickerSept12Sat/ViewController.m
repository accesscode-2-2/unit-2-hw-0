//
//  ViewController.m
//  AVColorPickerSept12Sat
//
//  Created by Ayuna Vogel on 9/12/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import "ViewController.h"
#import "AVColorPickerCommunicationProtocol.h"
#import "AVSocialMediaView.h"

// this view controller conforms to this protocol
@interface ViewController () <AVColorPickerCommunicationProtocol>
@property (weak, nonatomic) IBOutlet AVSocialMediaView *smview;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.smview.delegate = self;

}

-(void)didSelectColor:(UIColor *)color {
    self.view.backgroundColor = color;    
}

@end
