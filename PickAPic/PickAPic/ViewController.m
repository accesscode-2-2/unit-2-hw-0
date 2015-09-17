//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic, strong) UIImagePickerController *pickerController;
@property (strong, nonatomic) IBOutlet UIImageView *photoImageView;


@end

@implementation ViewController

- (IBAction)selectPhoto:(UIButton *)sender { // create button action
    
    self.pickerController = [[UIImagePickerController alloc]init]; // create picker controller
    self.pickerController.delegate = self; // we are the delgate of the picker controller
    
    [self presentViewController:self.pickerController animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info { // this is called when we pick a photo/video
    
    // convert to uiimage
    NSLog(@"did finish - image picker controller");
    UIImage *selectedImage = [info valueForKey:UIImagePickerControllerOriginalImage];
    
    // grab info from selected image and create new image for the image view
    self.photoImageView.image = selectedImage;
    
    NSLog(@"%@", info);
    
    // dismiss the image picker view
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker { // called if someone chooses cancel button
    NSLog(@"did cancel");
    
    // dismiss the image picker view
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
