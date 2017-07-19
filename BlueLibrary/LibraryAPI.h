//
// Created by Ahamed Shimak on 7/17/17.
// Copyright (c) 2017 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface LibraryAPI : NSObject
+ (LibraryAPI *)sharedInstance;
- (NSArray*)getAlbums;
- (void)addAlbum:(Album*)album atIndex:(int)index;
- (void)addAlbumAtLast:(Album*)album;
- (void)deleteAlbumAtIndex:(int)index;
- (void)saveAlbums;
@end