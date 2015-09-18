//
//  CustomView.m
//  Social
//
//  Created by Varindra Hart on 9/18/15.
//  Copyright © 2015 Varindra Hart. All rights reserved.
//

#import "CustomView.h"


@implementation CustomView

- (IBAction)buttonTapped:(UIButton *)sender{
    
    switch (sender.tag) {
        case 0:
            [self.delegate socialMediaViewDidTapCommentButton:self];
            break;
            
        case 1:
            [self.delegate socialMediaViewDidTapLikeButton:self];
            break;
            
        case 2:
            [self.delegate socialMediaViewDidTapShareButton:self];
            break;
            
        default:
            break;
    }
    
    
    
}

@end

