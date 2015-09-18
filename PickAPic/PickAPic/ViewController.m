//
//  ViewController.m
//  PickAPic
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//Remember to add the imageView outlet jerk.
@property (weak, nonatomic) IBOutlet UIImageView *hwImageView;

@end

@implementation ViewController


- (IBAction)cameraRollTapped:(UIButton *)sender {
	UIImagePickerController *selector = [[UIImagePickerController alloc] init];
	selector.delegate = self;
	selector.allowsEditing = YES;
	selector.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	//[self.presentedViewController animationDidStart:YES completion:NULL];
	[self presentViewController:selector animated:YES completion:NULL];
	
	
	}

	- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
		UIImage *cameraRollImage = info[UIImagePickerControllerEditedImage];
		self.hwImageView.image = cameraRollImage;
		[picker dismissViewControllerAnimated:YES completion:NULL];
	}


	

@end
