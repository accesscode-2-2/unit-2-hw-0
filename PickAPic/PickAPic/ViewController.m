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

// method that displays image after selection, also dismisses previous vc.
// finds image matching the string, using original image because it's default(?)
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    self.imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    // use setNeedsDisplay only when overriding drawRect in a subclass of UIView
    // i think it's also used since we're only working with one view?
    // stackoverflow says it should be called when changing a small amount of variables , which then allows drawRect to redraw the changed code?
    
    [self.view setNeedsDisplay];
}

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
    
    // nslog to see what images are available/selected
    NSLog(@"Available types in album: %@", albumType);
    NSLog(@"Available types in library: %@", libraryType);
    
    //only allow images from the default images from apple (?)
    NSArray *typesAllowed = @[@"public.image"];
    [imagePicker setMediaTypes:typesAllowed];
    
    imagePicker.delegate = self;
    // displays new vc without having to put a new one in storyboard
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)viewDidLoad {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reachabilityChanged" object:self];
    
    BOOL isReachable = YES;
    NSDictionary *dataDict = [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:isReachable]
                                                         forKey:@"isReachable"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reachabilityChanged" object:self userInfo:dataDict];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleReachabilityChange:)
                                                 name:@"reachabilityChanged"
                                               object:nil];
}

- (void)handleReachabilityChange:(NSNotification *)note {
    NSDictionary *theData = [note userInfo];
    if (theData != nil) {
        NSNumber *n = [theData objectForKey:@"isReachable"];
        BOOL isReachable = [n boolValue];
        NSLog(@"reachable: %d", isReachable);
    }
}

-(void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end

