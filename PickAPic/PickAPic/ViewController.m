//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "ImagePickerController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (IBAction)selectImagePressed:(id)sender {
    ImagePickerController *imagePicker = [ImagePickerController new];
    
    // figure out the best way to use the picker:
    BOOL sourceTypeCamera = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    BOOL sourceTypeLibrary = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary];
    BOOL sourceTypeAlbum = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
    NSLog(@"camera: %d, library: %d, album: %d", sourceTypeCamera, sourceTypeLibrary, sourceTypeAlbum);
    // No access to camera in simulator
    
    NSArray *libraryType = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    NSArray *albumType = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
    
    NSLog(@"Available types in library: %@", libraryType);
    NSLog(@"Available types in album: %@", albumType);
    // library types and album types are identical arrays, allowing for photos and videos, but
    // we'll only use images here
    
    NSArray *typesAllowed = @[@"public.image"];
    [imagePicker setMediaTypes:typesAllowed];
    
    imagePicker.delegate = self;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    NSLog(@"info: %@", info);
    self.imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    [self.view setNeedsDisplay];
}

@end
