//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () 

@end

@implementation ViewController

- (IBAction)commentButtonTapped:(id)sender {
    [self.delegate colorSelection:[UIColor greenColor]];
}

- (IBAction)likeButtonTapped:(id)sender {
    [self.delegate colorSelection:[UIColor blueColor]];
}

- (IBAction)shareButtonTapped:(id)sender {
    [self.delegate colorSelection:[UIColor redColor]];
}




@end
