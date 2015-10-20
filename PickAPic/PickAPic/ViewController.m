//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 

@end

@implementation ViewController

- (IBAction)takePicture:(id)sender {
    imagePicker1 = [[UIImagePickerController alloc] init];
    imagePicker1.delegate = self;
    [imagePicker1 setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:imagePicker1 animated:YES completion:NULL];
}

- (IBAction)choosePicture:(id)sender {
    
    imagePicker2 = [[UIImagePickerController alloc] init];
    imagePicker2.delegate = self;
    [imagePicker2 setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:imagePicker2 animated:YES completion:NULL];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [imageView setImage:image];
    self.addedImage = YES;
    [self dismissViewControllerAnimated:YES completion:NULL];
}


@end
