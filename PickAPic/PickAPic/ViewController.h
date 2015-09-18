//
//  ViewController.h
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationBarDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *imagePicker1;
    UIImagePickerController *imagePicker2;
    UIImage *image;
    __weak IBOutlet UIImageView *imageView;
}

@property (nonatomic) BOOL addedImage;



@end

