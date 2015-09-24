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
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    self.imagePicker = [[UIImagePickerController alloc] init];
    
    [self setUpUI];
    
}

-(void)setUpUI{
    
    self.cameraRollPhotoImageView.layer.cornerRadius = 20;
    self.cameraRollPhotoImageView.layer.borderWidth = 10;
    self.cameraRollPhotoImageView.layer.borderColor = [UIColor blackColor].CGColor;
    self.imageView.layer.cornerRadius = 20;
    
}

- (IBAction)cameraRollButtonTapped:(UIButton *)sender {

    self.imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    self.imagePicker.delegate = self;
    [self presentViewController:self.imagePicker animated:YES completion:nil];

}

#pragma mark - UIImagePickerController delegate methods

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    
    self.imageView.image = info[UIImagePickerControllerOriginalImage];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
