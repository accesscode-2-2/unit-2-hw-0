//
//  CustomSocialMediaView.h
//  PartTwo
//
//  Created by Justine Gartner on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomSocialMediaDelegate.h"

@interface CustomSocialMediaView : UIView

@property (nonatomic, weak) id <CustomSocialMediaDelegate> delegate;

@end
