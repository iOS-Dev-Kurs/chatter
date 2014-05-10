//
//  CHTRMessage.h
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

@import Foundation;


typedef enum : NSUInteger {
    CHTRMessageTypeStatement,
    CHTRMessageTypeJoke,
    CHTRMessageTypeQuestionBool,
    CHTRMessageTypeQuestionWhy
} CHTRMessageType;


@interface CHTRMessage : NSObject

@property (strong, nonatomic) NSString *text;
@property (nonatomic) CHTRMessageType type;

+ (instancetype)messageWithText:(NSString *)text type:(CHTRMessageType)type;

@end
