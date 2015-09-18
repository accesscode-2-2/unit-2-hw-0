//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaDelegate.h"
#import "SocialMediaView.h"

@interface ViewController () <SocialMediaDelegate>
@property (weak, nonatomic) IBOutlet SocialMediaView *socialMediaView;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.socialMediaView.delegate = self;
}

//- (void)colorPicked: (CIColor *)colorDisplayed {
//    self.view.backgroundColor = [UIColor colorWithCIColor:colorDisplayed];
//}

- (void)socialMediaViewDidTapLikeButton:(CIColor *)likeColor {
      self.view.backgroundColor = [UIColor colorWithCIColor:likeColor];
 
}

- (void)socialMediaViewDidTapCommentButton:(CIColor *)commentColor {
    self.view.backgroundColor = [UIColor colorWithCIColor:commentColor];
    
}

- (void)socialMediaViewDidTapShareButton:(CIColor *)shareColor {
    self.view.backgroundColor = [UIColor colorWithCIColor:shareColor];

}


- (void)addColor: (NSString *)colorAdded {
    NSLog(@"%@", colorAdded);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
