//
//  PickAPicViewController.m
//  PickAPic
//
//  Created by Jamaal Sedayao on 9/14/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "PickAPicViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>


@interface PickAPicViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PickAPicViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //self.imageView.clipsToBounds = YES;
    
    self.imageView.backgroundColor = [UIColor lightGrayColor];
}
-(void)viewDidAppear:(BOOL)animated{
    
    self.imageView.clipsToBounds = YES;
}
- (IBAction)clickedCameraRollButton:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    
    imagePicker.delegate = self;
    
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self.navigationController presentViewController:imagePicker animated:YES completion:nil];
    
}
- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    
    //self.imageView.image = [UIImage imageNamed:info];
    
    self.imageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)clickedCameraIcon:(id)sender {
   
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])  {
    
    UIImagePickerController *imageFromCamera = [[UIImagePickerController alloc]init];
    
    imageFromCamera.delegate = self;
    
    imageFromCamera.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self.navigationController presentViewController:imageFromCamera animated:YES completion:nil];
    }
}




@end
