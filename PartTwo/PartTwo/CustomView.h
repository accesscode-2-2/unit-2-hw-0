//
//  CustomView.h
//  PartTwo
//
//  Created by Natalia Estrella on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomViewDelegate.h"

@interface CustomView : UIView

@property (nonatomic, weak) id <CustomViewDelegate> delegate;


@end
