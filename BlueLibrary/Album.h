//
//  Album.h
//  BlueLibrary
//
//  Created by Ahamed Shimak on 7/17/17.
//  Copyright © 2017 Eli Ganem. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Album : NSObject <NSCoding>
@property (nonatomic, copy, readonly) NSString *title, *artist, *genre, *coverUrl, *year;

- (id)initWithTitle:(NSString*)title artist:(NSString*)artist coverUrl:(NSString*)coverUrl year:(NSString*)year;
@end
