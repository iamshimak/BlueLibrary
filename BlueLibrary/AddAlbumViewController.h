//
//  AddAlbumViewController.h
//  BlueLibrary
//
//  Created by Ahamed Shimak on 7/18/17.
//  Copyright © 2017 Eli Ganem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddAlbumViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapper;
@property (weak, nonatomic) IBOutlet UIView *addAlbumForm;
@end
