//
//  Dragon.m
//  DragonFashion
//
//  Created by Dave Krawczyk on 9/3/14.
//  Copyright (c) 2014 Dave Krawczyk. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

- (instancetype)initWithFullname:(NSString *)name andClothingItem:(NSString *)clothingItem
{
    self = [super init];
    if (self) {
        self.fullname = name;
        self.signatureClothingItem = clothingItem;
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"A dragon named %@ that wears %@",self.fullname, self.signatureClothingItem];
}


@end
