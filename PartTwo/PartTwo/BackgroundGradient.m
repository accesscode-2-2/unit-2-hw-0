//
//  BackgroundGradient.m
//  unit-1-final-project
//
//  Created by Fatima Zenine Villanueva on 8/26/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import "BackgroundGradient.h"
#import <UIKit/UIKit.h>

@implementation BackgroundGradient

//Metallic grey gradient background
+ (CAGradientLayer*) redGradient {
    
    UIColor *colorOne = [UIColor colorWithRed:(200.0/255.0) green:(135/255.0) blue:(150/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(60.0/255.0)  green:(15.0/255.0)  blue:(40.0/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
    
}

//Blue gradient background
+ (CAGradientLayer*) blueGradient {
    
    UIColor *colorOne = [UIColor colorWithRed:(135.0/255.0) green:(150.0/255.0) blue:(200.0/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(15.0/255.0)  green:(40.0/255.0)  blue:(60.0/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
    
}

+ (CAGradientLayer*) greenGradient {
    
    UIColor *colorOne = [UIColor colorWithRed:(135.0/255.0) green:(200.0/255.0) blue:(150.0/255.0) alpha:1.0];
    UIColor *colorTwo = [UIColor colorWithRed:(15.0/255.0)  green:(60.0/255.0)  blue:(40.0/255.0)  alpha:1.0];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, colorTwo.CGColor, nil];
    NSNumber *stopOne = [NSNumber numberWithFloat:0.0];
    NSNumber *stopTwo = [NSNumber numberWithFloat:1.0];
    
    NSArray *locations = [NSArray arrayWithObjects:stopOne, stopTwo, nil];
    
    CAGradientLayer *headerLayer = [CAGradientLayer layer];
    headerLayer.colors = colors;
    headerLayer.locations = locations;
    
    return headerLayer;
    
}


@end