//
//  AVColorPickerCommunicationProtocol.h
//  AVColorPickerSept12Sat
//
//  Created by Ayuna Vogel on 9/12/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AVColorPickerCommunicationProtocol <NSObject>

//- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view;
//
//- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view;
//
//- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view;

-(void)didSelectColor:(UIColor *)color;

@end
