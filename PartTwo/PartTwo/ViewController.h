//
//  ViewController.h
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialMediaBackgroundProtocol.h"


@interface ViewController : UIViewController

@property (nonatomic,weak) id <SocialMediaBackgroundProtocol> delegate; 

@end

