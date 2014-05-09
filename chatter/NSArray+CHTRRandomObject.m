//
//  NSArray+CHTRRandomObject.m
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "NSArray+CHTRRandomObject.h"

@implementation NSArray (CHTRRandomObject)

- (id)randomObject {
    return [self objectAtIndex:arc4random() % [self count]];
}

@end
