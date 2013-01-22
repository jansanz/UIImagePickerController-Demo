//
//  JSViewController.h
//  UIImagePickerDemo
//
//  Created by Jan Sanchez on 1/22/13.
//  Copyright (c) 2013 js. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)cameraButtonPressed:(id)sender;
- (IBAction)galleryButtonPressed:(id)sender;

@end
