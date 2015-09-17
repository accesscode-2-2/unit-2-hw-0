//
//  ColorMeNowVC.h
//  PodsColorPicker
//
//  Created by MacMan on 9/15/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCColorPickerViewController.h"
@interface ColorMeNowVC : UIViewController <FCColorPickerViewControllerDelegate>



@property (strong,nonatomic) UIColor *color;


//@property (strong, nonatomic) IBOutlet UIButton *changeColors;

- (IBAction)changeShareColors:(id)sender;

- (IBAction)changeCommentColors:(id)sender;

- (IBAction)changeLikeColors:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *labelBoxColor;





@end
