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



// Implementation of Topics
enum Topic : String {
    case none = "none", Science = "Science", Apples = "Apples", Relativity = "Relativity", Physics = "Physics" // Add Topics here
    var description: String {
        switch(self) {
        case .none:
            return "none"
        case .Science:
            return "Science"
        case .Apples:
            return "Apples"
        case .Relativity:
            return "Relativity"
        case .Physics:
            return "Physics"
        }
    }
}
// Stores actual topic
var theCurrentTopic = Topic.none

func changeTopic(changeRequest: Topic) {
    
}




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
        return NSStringFromClass(self.dynamicType).componentsSeparatedByString(".").last!
    }
    
    
    // MARK: Chatting

    /**
    Returns a chat message to be sent to the chat partner.
    
    This method is called to retrieve the next chat message for an ongoing conversation. It is supposed to read like a natural chat message the chat partner can respond to.
    
    You are encouraged to override this method in a subclass and even implement mechanics to provide a natural follow-up message in a given conversation. In the default implementations, we just pick random messages.
    
    - returns: A chat message the chat partner can respond to.
    */
    
    // Implementation of Topics
    var possibleTopics: [Topic] = [.none] // Add your Topics here
    var sayYesToTopicChangeWith = ["Yes, lets talk about that 😊"]
    var sayNoToTopicChangeWith = ["No, that is not what I want to talk with you about 😡"]
    var askForATopicChange = ["Lets talk about"]
    func responseForTopicChange(newTopic: Topic) -> (boolChange: Bool, changeText: String) {
        if(self.possibleTopics.contains(newTopic)) {
            return (true, self.sayYesToTopicChangeWith.randomElement())
        } else {
            return (false, self.sayNoToTopicChangeWith.randomElement())
        }
    }
    
    
    func nextMessage() -> Message {
        return [
            Message(content: "Say, do you like butterflies?", type: .QuestionBool),
            Message(content: "Did YOU like the last Harry Potter movie?", type: .QuestionBool),
            Message(content: "Why THE HELL are you saying that?", type: .QuestionWhy),
            Message(content: "Are we really that close?", type: .QuestionBool),
            Message(content: "Two photons go into a bar... argh I forget the rest ", type: .Joke),
            Message(content: "I like to move it, move it.", type: .Statement),
            Message(content: "This is weird.", type: .Statement),
            Message(content: "I always thought, the lemon is an underrated fruit. Care to weigh in?", type: .Statement),
            Message(content: "Are you alway like this?", type: .QuestionBool),
            Message(content: "Now I am confused...", type: .Statement),
            Message(content: "Time flies like an arrow; fruit flies like a banana. Get it ? ;)", type: .Joke),
            Message(content: "Why?!", type: .QuestionWhy),
            Message(content: "❤️❤️❤️", type: .Statement),
        ].randomElement()
    }

    /**
    Returns an appropriate answer or reaction to any given chat message.
    
    Just like nextMessage, this method is supposed to be overriden in a subclass. It should provide a chat message as response to a message received in an ongoing conversation.
    
    To make sure the conversation reads naturally, you should at least take the message type into account when choosing a response.
    
    - parameter message: The chat message to respond to.
    
    - returns: A chat message that is a contextual correct response to the given message.
    */
    func responseForMessage(message: Message) -> Message {
        switch message.type {
        case .Statement:
            return [
                Message(content: "You said it, not me...", type: .Statement),
                Message(content: "Absolutely!", type: .Statement),
                Message(content: "That's just weird.", type: .Statement),
                Message(content: "Oh, really?!", type: .QuestionBool),
                Message(content: "That's YOUR point of view.", type: .Statement),
                Message(content: "What?! I think I spider.", type: .Statement),
                Message(content: "👍", type: .Statement)
                ].randomElement()
        case .QuestionBool:
            return [
                Message(content: "Of course not!", type: .Statement),
                Message(content: "Yeah, I think so.", type: .Statement),
                Message(content: "Definitely. But that's a good thing 😉", type: .Statement),
                Message(content: "YOLO!", type: .Statement)
            ].randomElement()
        case .QuestionWhy:
            return [
                Message(content: "Just because I can!", type: .Statement),
                Message(content: "Because that's the way it is.", type: .Statement),
                Message(content: "Who knows?!", type: .Statement),
                Message(content: "Just accept it, buddy.", type: .Statement),
                Message(content: "I have never given it much thought...", type: .Statement),
                Message(content: "Hmm, I am not quite sure... but it IS an interesting question.", type: .Statement),
                Message(content: "Erm, why not?!", type: .Statement),
                Message(content: "Only God knows why...", type: .Statement)
            ].randomElement()
        case .Joke:
            return [
                Message(content: "Is that supposed to be funny?! 😠", type: .QuestionBool),
                Message(content: "HAHA, you are killing me 😄", type: .Statement),
                Message(content: "rofl 😆", type: .Statement),
                Message(content: "Good one 😉", type: .Statement),
                Message(content: "😀😀", type: .Statement)
            ].randomElement()
        default:
            return [
                Message(content: "Okay, Themawechsel", type: .Statement)
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
        case Statement, Joke, QuestionBool, QuestionWhy, changeTopic
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
