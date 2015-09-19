//
//  SocialMediaViewProtocol.h
//  PartTwo
//
//  Created by Diana Elezaj on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SocialMediaView;

@protocol SocialMediaViewProtocol <NSObject>

@required

//create methods in our protocol that will not return anything
- (void)commentButtonTapped:(SocialMediaView *)view;
- (void)likeButtonTapped:(SocialMediaView *)view;
- (void)shareButtonTapped:(SocialMediaView *)view;

@end
