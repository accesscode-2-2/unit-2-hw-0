//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Fatima Zenine Villanueva on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaDelegate.h"

@interface SocialMediaView : UIView

@property (nonatomic, weak) id <SocialMediaDelegate> delegate;

@end


