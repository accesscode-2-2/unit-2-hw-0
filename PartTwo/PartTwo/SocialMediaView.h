//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Xiulan Shi on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewDelegate.h"

@interface SocialMediaView : UIView

@property (nonatomic, weak) id <SocialMediaViewDelegate> delegate;

@end
