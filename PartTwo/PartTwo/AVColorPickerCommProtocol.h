//
//  AVColorPickerCommProtocol.h
//  PartTwo
//
//  Created by Artur Lan on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AVColorPickerCommProtocol <NSObject>

-(void)didSelectColor:(UIColor *)color;

@end
