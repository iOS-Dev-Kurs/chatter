//
//  Chatter.swift
//  chatter
//
//  Created by Nils Fischer on 30.04.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

/**
Chatter instances represent a character with the basic ability to chat with other instances of this class or its subclasses.

This class is supposed to be subclassed to implement a specific character or personality.

It most importantly provides the nextMessage and responseForMessage: methods. When overridden in a subclass, these methods should ideally generate a conversation that is as natural as possible.

You can also provide an image representation of the character you strive to implement using the designated initializer of this class.
*/
class Chatter {
    
    /// Visual representation of the chatter.
    let image: UIImage?
    
    init(image: UIImage?) {
        self.image = image
    }
    
    required convenience init() {
        self.init(image: nil)
    }
    
    var name: String {
        return NSStringFromClass(type(of: self)).components(separatedBy: ".").last!
    }
    
    
    // MARK: Chatting

    /**
    Returns a chat message to be sent to the chat partner.
    
    This method is called to retrieve the next chat message for an ongoing conversation. It is supposed to read like a natural chat message the chat partner can respond to.
    
    You are encouraged to override this method in a subclass and even implement mechanics to provide a natural follow-up message in a given conversation. In the default implementations, we just pick random messages.
    
    - returns: A chat message the chat partner can respond to.
    */
    func nextMessage() -> Message {
        return [
            Message(content: "Say, do you like butterflies?", type: .questionBool),
            Message(content: "Did YOU like the last Harry Potter movie?", type: .questionBool),
            Message(content: "Why THE HELL are you saying that?", type: .questionWhy),
            Message(content: "Are we really that close?", type: .questionBool),
            Message(content: "Two photons go into a bar... argh I forget the rest ", type: .joke),
            Message(content: "I like to move it, move it.", type: .statement),
            Message(content: "This is weird.", type: .statement),
            Message(content: "I always thought, the lemon is an underrated fruit. Care to weigh in?", type: .statement),
            Message(content: "Are you alway like this?", type: .questionBool),
            Message(content: "Now I am confused...", type: .statement),
            Message(content: "Time flies like an arrow; fruit flies like a banana. Get it ? ;)", type: .joke),
            Message(content: "Why?!", type: .questionWhy),
            Message(content: "❤️❤️❤️", type: .statement),
        ].randomElement()
    }

    /**
    Returns an appropriate answer or reaction to any given chat message.
    
    Just like nextMessage, this method is supposed to be overriden in a subclass. It should provide a chat message as response to a message received in an ongoing conversation.
    
    To make sure the conversation reads naturally, you should at least take the message type into account when choosing a response.
    
    - parameter message: The chat message to respond to.
    
    - returns: A chat message that is a contextual correct response to the given message.
    */
    func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "You said it, not me...", type: .statement),
                Message(content: "Absolutely!", type: .statement),
                Message(content: "That's just weird.", type: .statement),
                Message(content: "Oh, really?!", type: .questionBool),
                Message(content: "That's YOUR point of view.", type: .statement),
                Message(content: "What?! I think I spider.", type: .statement),
                Message(content: "👍", type: .statement)
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "Of course not!", type: .statement),
                Message(content: "Yeah, I think so.", type: .statement),
                Message(content: "Definitely. But that's a good thing 😉", type: .statement),
                Message(content: "YOLO!", type: .statement)
            ].randomElement()
        case .questionWhy:
            return [
                Message(content: "Just because I can!", type: .statement),
                Message(content: "Because that's the way it is.", type: .statement),
                Message(content: "Who knows?!", type: .statement),
                Message(content: "Just accept it, buddy.", type: .statement),
                Message(content: "I have never given it much thought...", type: .statement),
                Message(content: "Hmm, I am not quite sure... but it IS an interesting question.", type: .statement),
                Message(content: "Erm, why not?!", type: .statement),
                Message(content: "Only God knows why...", type: .statement)
            ].randomElement()
        case .joke:
            return [
                Message(content: "Is that supposed to be funny?! 😠", type: .questionBool),
                Message(content: "HAHA, you are killing me 😄", type: .statement),
                Message(content: "rofl 😆", type: .statement),
                Message(content: "Good one 😉", type: .statement),
                Message(content: "😀😀", type: .statement)
            ].randomElement()
        }
    }
    
}

/* This would be better way - if the compiler didn't crash when instantiating Chatter()..

protocol Chatter {

var name: String { get }
var image: UIImage? { get }

init()

}

class GenericChatter: Chatter {

let name: String = "Chatter"
let image: UIImage? = nil

required init() {}

}

*/


// MARK: - Message

/**
Message instances represent a chat message and the meta data associated with it.

You can use the available properties to configure a text message with additional information that may help to understand the message's content.
*/
struct Message: CustomStringConvertible {
    
    /// The message content
    let content: String
    
    /// The type of the message. The value of this property is supposed to help the receiver understand the message content to respond appropriately.
    let type: MessageType
    
    /// The available message types.
    enum MessageType {
        case statement, joke, questionBool, questionWhy
    }
    
    var description: String {
        return content
    }
    
}


// MARK: - Array Extension

extension Array {
    func randomElement() -> Element {
        let randomIndex = Int(arc4random_uniform(UInt32(count)))
        return self[randomIndex]
    }
}
