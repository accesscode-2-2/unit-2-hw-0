//
//  BasicCamAppVC.h
//  CamAppProj_2
//
//  Created by MacMan on 9/15/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicCamAppVC : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    IBOutlet UIImageView *myImageView;
    UIImagePickerController *picker;
    UIImage *image;

}




@end
