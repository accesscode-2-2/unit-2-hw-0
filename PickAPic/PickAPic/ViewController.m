//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "AVFoundation/AVFoundation.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate, AVAudioPlayerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (nonatomic) AVAudioPlayer *myAudioPlayer;

@end

@implementation ViewController

-(void)viewDidLoad {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ImageChanged" ofType:@"mp3"];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    self.myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
}

- (IBAction)selectPhoto:(UIButton *)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.myImage.image = chosenImage;
    [self.myAudioPlayer prepareToPlay];
    [self.myAudioPlayer play];
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    
}


@end
