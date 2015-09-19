//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Lauren Caponong on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "protocol.h"


@interface SocialMediaView : UIView

@property (nonatomic, weak) id <protocol> delegate;

@end
