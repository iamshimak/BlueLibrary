//
// Created by Ahamed Shimak on 7/17/17.
// Copyright (c) 2017 Eli Ganem. All rights reserved.
//

#import "Album+TableRepresentation.h"

@implementation Album (TableRepresentation)
- (NSDictionary *)tr_tableRepresentation {
    return @{@"titles": @[@"Artist", @"Album", @"Genre", @"Year"],
            @"values": @[self.artist, self.title, self.genre, self.year]};
}
@end