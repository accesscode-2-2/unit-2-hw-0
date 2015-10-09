//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Christian Maldonado on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SocialDelegateProtocol;

@interface SocialMediaView : UIView

@property (nonatomic, weak) IBOutlet id <SocialDelegateProtocol> delegate;


@end
