//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

// going to start writing a lot of comments so i understand everything i'm doing

@interface ViewController ()

// make property for the imageview
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

//make ibaction for the image selection button
- (IBAction)selectImagePressed:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    BOOL sourceTypeAlbum = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
    BOOL sourceTypeCamera = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    BOOL sourceTypeLibrary = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary];
    
    // add nslog to make sure it's working and get selection info
    NSLog(@"album:%d, camera:%d, library:%d", sourceTypeCamera, sourceTypeLibrary, sourceTypeAlbum);
    
    NSArray *albumType = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
    NSArray *libraryType = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    
    NSLog(@"Available types in album: %@", albumType);
    NSLog(@"Available types in library: %@", libraryType);
    
    NSArray *typesAllowed = @[@"public.image"];
    [imagePicker setMediaTypes:typesAllowed];
    
    imagePicker.delegate = self;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    self.imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    [self.view setNeedsDisplay];
}

@end

