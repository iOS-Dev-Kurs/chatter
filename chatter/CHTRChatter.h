//
//  CHTRPerson.h
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

@import Foundation;
#import "CHTRMessage.h"
#import "NSArray+CHTRRandomObject.h"

/**
 @abstract CHTRChatter objects represent a character with the basic ability to chat with other instances of this class or its subclasses.
 
 @discussion This class is supposed to be subclassed to implement a specific character or personality.
 
 It most importantly provides the nextMessage: and responseForMessage: methods. When overridden in a subclass, these methods should ideally generate a conversation that is as natural as possible.
 
 You can also provide an image representation of the character you strive to implement using the image property.
*/

@interface CHTRChatter : NSObject

/// Visual representation of the chatter. If nil, the class name is displayed instead.
@property (strong, nonatomic) UIImage *image;

/// A reference to the chatter's chat partner
@property (weak, nonatomic) CHTRChatter *partner;

/**
 @abstract Returns a chat message to be sent to the chat partner.

 @discussion This method is called to retrieve the next chat message for an ongoing conversation. It is supposed to read like a natural chat message the chat partner can respond to.
 
 You are encouraged to override this method in a subclass and even implement mechanics to provide a natural follow-up message in a given conversation.

 @return A chat message the chat partner can respond to.

 @see responseForMessage:
*/
- (CHTRMessage *)nextMessage;

/**
 @abstract Returns an appropriate answer or reaction to any given chat message.
 
 @discussion Just like nextMessage, this method is supposed to be overriden in a subclass. It should provide a chat message as response to a message received in an ongoing conversation.
 
 To make sure the conversation reads naturally, you should at least take the message type into account when choosing a response.
 
 @param message The chat message to respond to.
 
 @return A chat message that is a contextual correct response to the given message.
*/
- (CHTRMessage *)responseForMessage:(CHTRMessage *)message;

@end
