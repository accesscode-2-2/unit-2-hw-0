//
//  socialView.h
//  PartTwo
//
//  Created by Henna on 9/18/15.
//  Copyright (c) 2015 Henna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "socialProtocol.h"

@interface socialView : UIView
@property (nonatomic, weak) id <socialProtocol> delegate;
@end
