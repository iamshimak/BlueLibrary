//
//  Album.m
//  BlueLibrary
//
//  Created by Ahamed Shimak on 7/17/17.
//  Copyright © 2017 Eli Ganem. All rights reserved.
//

#import "Album.h"

@implementation Album
- (id)initWithTitle:(NSString *)title artist:(NSString *)artist coverUrl:(NSString *)coverUrl year:(NSString *)year {
    self = [self init];
    if (self) {
        _title = title;
        _artist = artist;
        _coverUrl = coverUrl;
        _year = year;
        _genre = @"Pop";
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.year forKey:@"year"];
    [aCoder encodeObject:self.title forKey:@"album"];
    [aCoder encodeObject:self.artist forKey:@"artist"];
    [aCoder encodeObject:self.coverUrl forKey:@"cover_url"];
    [aCoder encodeObject:self.genre forKey:@"genre"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        _year = [aDecoder decodeObjectForKey:@"year"];
        _title = [aDecoder decodeObjectForKey:@"album"];
        _artist = [aDecoder decodeObjectForKey:@"artist"];
        _coverUrl = [aDecoder decodeObjectForKey:@"cover_url"];
        _genre = [aDecoder decodeObjectForKey:@"genre"];
    }
    return self;
}

- (NSString *)description {
    NSMutableString *description = [NSMutableString stringWithFormat:@"<%@: ", NSStringFromClass([self class])];
    [description appendFormat:@"self.title=%@", self.title];
    [description appendFormat:@", self.artist=%@", self.artist];
    [description appendFormat:@", self.genre=%@", self.genre];
    [description appendFormat:@", self.coverUrl=%@", self.coverUrl];
    [description appendFormat:@", self.year=%@", self.year];
    [description appendString:@">"];
    return description;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
