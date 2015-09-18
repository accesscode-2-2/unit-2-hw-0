//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()  <UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@end

@implementation ViewController




-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:( NSDictionary *)info{
        UIImage  *chosenImage = [info objectForKey:UIImagePickerControllerOriginalImage];
        self.imageView.image = chosenImage;

        [self.navigationController dismissViewControllerAnimated:picker completion:nil];
    }


-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
        [picker dismissViewControllerAnimated:YES completion:nil];
    }



- (IBAction)camera:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypeCamera]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = NO;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        [self presentViewController:picker animated:YES completion:nil];
        
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"No Camera Available." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (IBAction)cameraRoll:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:
         UIImagePickerControllerSourceTypeSavedPhotosAlbum]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = NO;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        [self presentViewController:picker animated:YES completion:nil];
        
    }
}

@end
