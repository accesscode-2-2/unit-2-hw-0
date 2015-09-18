//
//  CustomView.h
//  PartTwo
//
//  Created by Jackie Meggesto on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaDelegate.h"

@interface CustomView : UIView

@property (nonatomic, weak) id<SocialMediaDelegate> delegate;

@end
