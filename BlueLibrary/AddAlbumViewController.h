//
//  AddAlbumViewController.h
//  BlueLibrary
//
//  Created by Ahamed Shimak on 7/18/17.
//  Copyright © 2017 Eli Ganem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddAlbumViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *artist;
@property (weak, nonatomic) IBOutlet UITextField *album;
@property (weak, nonatomic) IBOutlet UITextField *genre;
@property (weak, nonatomic) IBOutlet UIDatePicker *year;
@end
