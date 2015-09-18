//
//  CustomView.h
//  Social
//
//  Created by Varindra Hart on 9/18/15.
//  Copyright © 2015 Varindra Hart. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomView;

@protocol CustomViewProtocol <NSObject>

- (void)socialMediaViewDidTapLikeButton:(CustomView *)view;
- (void)socialMediaViewDidTapCommentButton:(CustomView *)view;
- (void)socialMediaViewDidTapShareButton:(CustomView *)view;

@end

@interface CustomView : UIView 

@property (nonatomic, weak) id <CustomViewProtocol> delegate;

@end
