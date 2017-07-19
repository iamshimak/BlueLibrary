//
//  AddAlbumViewController.m
//  BlueLibrary
//
//  Created by Ahamed Shimak on 7/18/17.
//  Copyright © 2017 Eli Ganem. All rights reserved.
//

#import "AddAlbumViewController.h"
#import "Album.h"
#import "LibraryAPI.h"

@interface AddAlbumViewController ()
@property(weak, nonatomic) IBOutlet UINavigationBar *navBar;
@end

@implementation AddAlbumViewController
- (IBAction)addBtn:(id)sender {
    Album *album = [[Album alloc] initWithTitle:[(UITextField *) [_addAlbumForm viewWithTag:2] text]
                                         artist:[(UITextField *) [_addAlbumForm viewWithTag:1] text]
                                       coverUrl:[(UITextField *) [_addAlbumForm viewWithTag:5] text]
                                           year:@"1990"];
    [[LibraryAPI sharedInstance] addAlbum:album atIndex:0];
    NSLog(@"Album%@", album);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(Back)];
    _navBar.topItem.leftBarButtonItem = backButton;
}


- (void)viewDidLoad {
    [super viewDidLoad];

}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
