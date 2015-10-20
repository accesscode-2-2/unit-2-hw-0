//
//  SocialMedia.m
//  PartTwo
//
//  Created by Brian Blanco on 9/19/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "SocialMedia.h"

@implementation SocialMedia

- (IBAction)commentButton:(id)sender {
    [self.delegate tappedCommentButton:self];
}
- (IBAction)likeButton:(id)sender {
    [self.delegate tappedLikeButton:self];
    
}
- (IBAction)shareButton:(id)sender {
    [self.delegate tappedShareButton:self];
}


@end
