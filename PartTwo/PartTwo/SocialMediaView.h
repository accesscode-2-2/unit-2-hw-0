//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Shena Yoshida on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonPressedProtocol.h"

@interface SocialMediaView : UIView

@property (nonatomic, weak) id <ButtonPressedProtocol> delegate; 

@end
