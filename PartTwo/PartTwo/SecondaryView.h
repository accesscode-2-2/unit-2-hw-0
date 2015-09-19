//
//  SecondaryView.h
//  PartTwo
//
//  Created by Kaisha Jones on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondaryViewDelegate.h"

@interface SecondaryView : UIView
@property (nonatomic, weak) id <SecondaryViewDelegate> delegate;

@end