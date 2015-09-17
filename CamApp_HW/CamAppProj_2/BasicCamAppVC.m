//
//  BasicCamAppVC.m
//  CamAppProj_2
//
//  Created by MacMan on 9/15/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "BasicCamAppVC.h"


@implementation BasicCamAppVC

- (IBAction)takePhoto:(id)sender {
    
    picker = [[UIImagePickerController alloc]init];
    picker.delegate = self;
    //[picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [picker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker animated:YES completion:NULL];
    
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [myImageView setImage:image];
    UIImageWriteToSavedPhotosAlbum(image,nil,nil,nil);
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}




@end
