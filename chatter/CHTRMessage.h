//
//  CHTRMessage.h
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

@import Foundation;

/**
 The available message types declared in CHTRMessage.h.
 
 You can carefully add more, if you absolutely need to. Keep in mind, that not everyone is going to respond to it appropriately, though.
*/
typedef enum : NSUInteger {
    CHTRMessageTypeStatement,
    CHTRMessageTypeJoke,
    CHTRMessageTypeQuestionBool,
    CHTRMessageTypeQuestionWhy
} CHTRMessageType;


/**
 @abstract CHTRMessage objects represent a chat message and the meta data associated with it.
 
 @discussion This class can be used as-is without the need to subclass it. 

 You can use the available properties to configure a text message with additional information that may help to understand the message's content.
*/

@interface CHTRMessage : NSObject

/// The actual message content string
@property (strong, nonatomic) NSString *text;

/// The type of the message as one of the available message types declared as CHTRMessageType constant. The value of this property is supposed to help the receiver understand the message content to react appropriately.
@property (nonatomic) CHTRMessageType type;

/**
 @abstract Factory method to quickly create a message with the given values for the text and type properties.
 
 @return An new object with the text and type properties set appropriately.
*/
+ (instancetype)messageWithText:(NSString *)text type:(CHTRMessageType)type;

@end
