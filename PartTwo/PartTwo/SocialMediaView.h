//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Z on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewProtocol.h"

@interface SocialMediaView : UIView

@property (nonatomic,weak) id<SocialMediaViewDelegate> delegate;

@end


