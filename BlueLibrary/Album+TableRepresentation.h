//
// Created by Ahamed Shimak on 7/17/17.
// Copyright (c) 2017 Eli Ganem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Album.h"

@interface Album (TableRepresentation)
- (NSDictionary*)tr_tableRepresentation;
@end