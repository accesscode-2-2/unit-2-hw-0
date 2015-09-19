//
//  AVSocialMediaView.h
//  PartTwo
//
//  Created by Artur Lan on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVColorPickerCommProtocol.h"
#import "AVSocialMediaView.h"

@interface AVSocialMediaView : UIView

@property (nonatomic, weak) id <AVColorPickerCommProtocol> delegate;


@end
