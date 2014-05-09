//
//  CHTRMessage.m
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "CHTRMessage.h"

@implementation CHTRMessage

+ (instancetype)messageWithText:(NSString *)text type:(CHTRMessageType)type
{
    CHTRMessage *message = [[self alloc] init];
    message.text = text;
    message.type = type;
    return message;
}

@end
