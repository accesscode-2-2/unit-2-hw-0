//
//  CameraView.m
//  PickAPic
//
//  Created by Brian Blanco on 9/17/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "CameraView.h"

@implementation CameraView 



- (IBAction)takePicture:(id)sender {
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
        picker.allowsEditing = false;
        [self presentViewController:picker animated:true completion:nil];
    }
    
}

- (IBAction)choosePicture:(id)sender {
}

@end
