//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *cameraRollButton;
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
@property (nonatomic) UIImagePickerController *imagePicker;
@end

@implementation ViewController

- (IBAction)cameraRollButtonTapped:(id)sender {
    
    _imagePicker = [[UIImagePickerController alloc] init];
    _imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    _imagePicker.delegate = self;
    [_imagePicker setAllowsEditing:NO];
    [self presentViewController:_imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    picker = _imagePicker;
    UIImage *imageChosen = info[UIImagePickerControllerOriginalImage];
    _pictureImageView.image = imageChosen;
//    _pictureImageView.contentScaleFactor
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)takePhotoButtonTapped:(id)sender {
    
    _imagePicker = [[UIImagePickerController alloc] init];
    _imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    _imagePicker.delegate = self;
    [_imagePicker setAllowsEditing:YES];
    [self presentViewController:_imagePicker animated:YES completion:nil];
    
}


@end
