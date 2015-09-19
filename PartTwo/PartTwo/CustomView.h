//
//  CustomView.h
//  PartTwo
//
//  Created by Bereket  on 9/18/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (nonatomic, weak) id <CustomViewDelegate> delegate;

@end
