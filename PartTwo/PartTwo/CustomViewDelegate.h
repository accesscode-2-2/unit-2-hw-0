//
//  CustomViewDelegate.h
//  PartTwo
//
//  Created by Eric Sze on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

// must set @class instead of property or error

@class CustomView

@protocol CustomViewDelegate <NSObject>

- (void)customViewLikeButtonTapped:(CustomView *) view;



@end
