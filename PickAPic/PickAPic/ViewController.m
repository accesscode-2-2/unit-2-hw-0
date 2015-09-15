//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIImagePickerController *imagePicker;
@property (weak, nonatomic) IBOutlet UIView *cameraRollPhotoImageView;

@end

@implementation ViewController

-(void)viewDidLoad{
    
    self.imagePicker = [[UIImagePickerController alloc] init];
    
}

- (IBAction)cameraRollButtonTapped:(UIButton *)sender {


}

#pragma mark - UIImagePickerController delegate methods

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    
    
}

@end
