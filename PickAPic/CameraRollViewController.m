//
//  CameraRollViewController.m
//  PickAPic
//
//  Created by Kaisha Jones on 9/18/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CameraRollViewController.h"

@interface CameraRollViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIImagePickerController *imagePicker;
@property (strong, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UIButton *cameraRollButton;



@end

@implementation CameraRollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imagePicker = [[UIImagePickerController alloc] init];
    self.imagePicker.delegate = self;
    
}

- (IBAction)camerRollButtonTapped:(UIButton *)sender {
    
    [self presentViewController:self.imagePicker animated:YES completion:nil];
    
//    
//        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
//            self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
//        } else {
//            self.imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    
//        }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    
    self.myImage.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
//    self.myImage.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end