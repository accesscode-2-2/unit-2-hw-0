//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Jamaal Sedayao on 9/15/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaDelegate.h"


@interface SocialMediaView : UIView

@property (nonatomic,weak) id <SocialMediaDelegate> delegate;

@end
