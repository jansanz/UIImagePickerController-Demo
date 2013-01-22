//
//  JSViewController.m
//  UIImagePickerDemo
//
//  Created by Jan Sanchez on 1/22/13.
//  Copyright (c) 2013 js. All rights reserved.
//

#import "JSViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface JSViewController ()

@end

@implementation JSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cameraButtonPressed:(id)sender {
  UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
  if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    pickerController.mediaTypes = @[(NSString *)kUTTypeImage];
    pickerController.delegate = self;
    [self presentViewController:pickerController animated:YES completion:NULL];
  } else {
    // camera not available, do something
  }
}

- (IBAction)galleryButtonPressed:(id)sender {
  UIImagePickerController *pickerController = [[UIImagePickerController alloc] init];
  if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
    pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    pickerController.allowsEditing = YES;
    pickerController.delegate = self;
    [self presentViewController:pickerController animated:YES completion:NULL];
  }
}

#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
  [self dismissViewControllerAnimated:YES completion:NULL];
  
  UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
  if (image == nil)
    image = [info objectForKey:UIImagePickerControllerOriginalImage];
  
  // Do something with the image
  [self.imageView setImage:image];
}

@end
