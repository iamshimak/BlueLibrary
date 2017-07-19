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
#import "ViewController.h"

@interface AddAlbumViewController () {
    UITextField *url;
}
@property(weak, nonatomic) IBOutlet UINavigationBar *navBar;
@property(weak, nonatomic) IBOutlet UITextField *typeSomethingTF;
@end

@implementation AddAlbumViewController
- (IBAction)hideKeyboard:(id)sender {
    NSLog(@"Touch Gesture");
}

- (IBAction)addBtn:(id)sender {
    UIDatePicker *date = [_addAlbumForm viewWithTag:4];
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:date.date];
    
    Album *album = [[Album alloc] initWithTitle:[(UITextField *) [_addAlbumForm viewWithTag:2] text]
                                         artist:[(UITextField *) [_addAlbumForm viewWithTag:1] text]
                                       coverUrl:[(UITextField *) [_addAlbumForm viewWithTag:5] text]
                                           year:[[NSString alloc] initWithFormat:@"%d", [components year]]];
    
    [[LibraryAPI sharedInstance] addAlbumAtLast:album];
    
    NSLog(@"Album%@",album);
    
    ViewController *addAlbum = [ViewController new];
    [self presentViewController:addAlbum animated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(Back)];
    _navBar.topItem.leftBarButtonItem = backButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    url = (UITextField *) [_addAlbumForm viewWithTag:5];
    [url setDelegate:self];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
