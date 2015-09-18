//
//  CameraView.h
//  PickAPic
//
//  Created by Brian Blanco on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraView : UIView <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *imagePicker1;
    UIImagePickerController *imagePicker2;
    UIImage *image;
    __weak IBOutlet UIImageView *imageView;
    
}



@end
