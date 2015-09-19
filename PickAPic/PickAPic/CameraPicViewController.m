//
//  CameraPicViewController.m
//  PickAPic
//
//  Created by Umar on 9/19/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CameraRollViewController.h"

@interface CameraRollViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIImagePickerController *image1;

@property (strong, nonatomic) IBOutlet UIImageView *Image;

@property (weak, nonatomic) IBOutlet UIButton *cameraRButton;



@end

@implementation CameraPicViewController

- (void)viewDidLoad {
        [super viewDidLoad];
        self.image1 = [[UIImagePickerController alloc] init];
        self.image1.delegate = self;
    
    }

- (IBAction)cameraButtonTapped:(UIButton *)sender {
    
        [self presentViewController:self.imagePicker animated:YES completion:nil];
    }

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    
        self.Image.image = [info objectForKey:UIImagePickerControllerOriginalImage];
        [self dismissViewControllerAnimated:NO completion:nil];
    }
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)pick didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    }
@end