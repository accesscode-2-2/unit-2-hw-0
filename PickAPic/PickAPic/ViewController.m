//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *cameraRoll;
@property (nonatomic) UIImagePickerController *imagePickerController;

@end

@implementation ViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.cameraRoll.hidden = YES;
    [self goUIImagePickerController];
}

- (void)goUIImagePickerController{
    self.imagePickerController = [UIImagePickerController new];
    
    self.imagePickerController.delegate = self;
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]){
        
        self.imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        self.imagePickerController.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    [self.navigationController presentViewController:self.imagePickerController animated:YES completion:nil];
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    
    self.cameraRoll.hidden = NO;
    self.imageView.image = (UIImage *)[info objectForKey:UIImagePickerControllerOriginalImage];
    
    [self.navigationController dismissViewControllerAnimated:picker completion:nil];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Camera Roll Button Tapped


- (IBAction)cameraRollButtonTapped:(UIButton *)sender {
    [self goUIImagePickerController];

}



@end
