//
//  SocialMediaView.h
//  PartTwo
//
//  Created by Diana Elezaj on 9/16/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaViewProtocol.h"

@interface SocialMediaView : UIView

//property of type id (any object) that conforms to the protocol <SocialMediaViewProtocol> called delegate
@property (nonatomic, weak) id <SocialMediaViewProtocol> delegate;

@end
