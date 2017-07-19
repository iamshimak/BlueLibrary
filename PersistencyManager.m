//
//  PersistencyManager.m
//  BlueLibrary
//
//  Created by Ahamed Shimak on 7/17/17.
//  Copyright © 2017 Eli Ganem. All rights reserved.
//

#import "PersistencyManager.h"

@interface PersistencyManager () {
    // an array of all albums
    NSMutableArray *albums;
}

@end

@implementation PersistencyManager
- (id)init {
    self = [super init];
    if (self) {
        NSData *data = [NSData dataWithContentsOfFile:[NSHomeDirectory() stringByAppendingString:@"/Documents/albums.bin"]];
        albums = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        if (albums == nil) {
            albums = [NSMutableArray arrayWithArray:
                    @[[[Album alloc] initWithTitle:@"Best of Bowie" artist:@"David Bowie" coverUrl:@"https://lastfm-img2.akamaized.net/i/u/ar0/a59b52a89a2238773d25cc0f18a4c4b7" year:@"1992"],
                            [[Album alloc] initWithTitle:@"It's My Life" artist:@"No Doubt" coverUrl:@"http://streamd.hitparade.ch/cdimages/bon_jovi-its_my_life_s_5.jpg" year:@"2003"],
                            [[Album alloc] initWithTitle:@"Nothing Like The Sun" artist:@"Sting" coverUrl:@"https://img.discogs.com/poXtE-QtGEPju_vaFTzPUJ0vL68=/fit-in/500x500/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-461532-1427910040-7080.jpeg.jpg" year:@"1999"],
                            [[Album alloc] initWithTitle:@"Staring at the Sun" artist:@"U2" coverUrl:@"https://images.genius.com/cc5a33087b90fda13d60349dd74b3dde.620x620x1.jpg" year:@"2000"],
                            [[Album alloc] initWithTitle:@"Thriller" artist:@"U2" coverUrl:@"https://upload.wikimedia.org/wikipedia/en/5/55/Michael_Jackson_-_Thriller.png" year:@"1982"],
                            [[Album alloc] initWithTitle:@"American Pie" artist:@"Madonna" coverUrl:@"http://direct.rhapsody.com/imageserver/images/Alb.194172888/500x500.jpg" year:@"2000"]]];
            [self saveAlbums];
        }
    }
    return self;
}

- (NSArray *)getAlbums {
    return albums;
}

- (void)addAlbum:(Album *)album atIndex:(int)index {
    if (albums.count >= index)
        [albums insertObject:album atIndex:index];
    else
        [albums addObject:album];
}

- (void)addAlbumAtLast:(Album *)album {
    [albums addObject:album];
}

- (void)deleteAlbumAtIndex:(int)index {
    [albums removeObjectAtIndex:index];
}

- (void)saveImage:(UIImage *)image filename:(NSString *)filename {
    filename = [NSHomeDirectory() stringByAppendingFormat:@"/Documents/%@", filename];
    NSData *data = UIImagePNGRepresentation(image);
    [data writeToFile:filename atomically:YES];
}

- (UIImage *)getImage:(NSString *)filename {
    filename = [NSHomeDirectory() stringByAppendingFormat:@"/Documents/%@", filename];
    NSData *data = [NSData dataWithContentsOfFile:filename];
    return [UIImage imageWithData:data];
}

- (void)saveAlbums {
    NSString *filename = [NSHomeDirectory() stringByAppendingString:@"/Documents/albums.bin"];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:albums];
    [data writeToFile:filename atomically:YES];
}
@end
