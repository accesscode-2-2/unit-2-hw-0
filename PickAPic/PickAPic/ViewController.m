//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <MobileCoreServices/UTCoreTypes.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *takePictureButton;
@property (strong, nonatomic) MPMoviePlayerController *moviePlayerController;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSURL *movieURL;
@property (copy, nonatomic) NSString *lastChosenMediaType;


@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self updateDisplay];
}
- (IBAction)shootPictureOrVideo:(UIButton *)sender {
    [self pickMediaFromSource:UIImagePickerControllerSourceTypeCamera];
}

- (IBAction)selectExistinPictureOrVideo:(UIButton *)sender {
    [self pickMediaFromSource:UIImagePickerControllerSourceTypePhotoLibrary];
}

#pragma mark - Image Picker Controller Delegate methods 

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    self.lastChosenMediaType = info[UIImagePickerControllerMediaType];
    if ([self.lastChosenMediaType isEqual:(NSString *)kUTTypeImage]) {
        self.image = info[UIImagePickerControllerEditedImage];
    } else if ([self.lastChosenMediaType isEqual:(NSString *)kUTTypeMovie]) {
        self.movieURL = info[UIImagePickerControllerMediaURL];
    }
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

#pragma mark - Ayuna's methods 

//-(void)startImagePickerController {
////    if (self.imageView.image == nil) {
//        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc]init];
//        imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
//        imagePickerController.delegate = self;
//        imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//        [self presentViewController:imagePickerController animated:NO completion:nil];
//}

//-(void)viewDidAppear:(BOOL)animated {
//    if (self.imageView.image == nil) {
//        [super viewDidAppear:animated];
//        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc]init];
//        imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
//        imagePickerController.delegate = self;
//        imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary; 
//        [self presentViewController:imagePickerController animated:NO completion:nil];
//    }
//    else {
//        
//    }
//}

//-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
//
//-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
//    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
//    self.imageView.image = image;
//    [self dismissViewControllerAnimated:YES completion:nil]; 
//}


#pragma mark - Beginning Iphone Development Book methods 

- (void)updateDisplay {
    if ([self.lastChosenMediaType isEqual:(NSString *) kUTTypeImage]) {
        self.imageView.image = self.image;
        self.imageView.hidden = NO;
        self.moviePlayerController.view.hidden = YES;
    } else if ([self.lastChosenMediaType isEqual:(NSString *)kUTTypeMovie]) {
        if (self.moviePlayerController == nil) {
            self.moviePlayerController = [[MPMoviePlayerController alloc]initWithContentURL:self.movieURL];
            UIView *movieView = self.moviePlayerController.view;
            movieView.frame = self.imageView.frame;
            movieView.clipsToBounds = YES;
            [self.view addSubview:movieView];
            [self setMoviePlayerLayoutConstraints];
        } else {
            self.moviePlayerController.contentURL = self.movieURL;
        }
        self.imageView.hidden = YES;
        self.moviePlayerController.view.hidden = NO;
        [self.moviePlayerController play];
    }
}

- (void)setMoviePlayerLayoutConstraints{
    UIView *moviePlayerView = self.moviePlayerController.view;
    UIView *takePictureButton = self.takePictureButton;
    moviePlayerView.translatesAutoresizingMaskIntoConstraints = NO;
    NSDictionary *views = NSDictionaryOfVariableBindings(moviePlayerView);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[moviePlayerView]|" options:0 metrics:nil views:views]]; 
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[moviePlayerView]-0-[takePictureButton]|" options:0 metrics:nil views:views]];
}

- (void)pickMediaFromSource:(UIImagePickerControllerSourceType)sourceType {
    NSArray *mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:sourceType];
    if ([UIImagePickerController isSourceTypeAvailable:sourceType] && [mediaTypes count] > 0) {
        UIImagePickerController *picker = [[UIImagePickerController alloc]init];
        picker.mediaTypes = mediaTypes;
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = sourceType;
        [self presentViewController:picker animated:YES completion:NULL];
    } else {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error accessing media" message:@"Unsupported media source." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
