//
//  AVSocialMediaView.h
//  AVColorPickerSept12Sat
//
//  Created by Ayuna Vogel on 9/15/15.
//  Copyright © 2015 Ayuna Vogel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVColorPickerCommunicationProtocol.h"
#import "AVSocialMediaView.h"

@interface AVSocialMediaView : UIView

@property (nonatomic, weak) id <AVColorPickerCommunicationProtocol> delegate;

@end
