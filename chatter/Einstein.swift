//
//  Einstein.swift
//  chatter
//
//  Created by Max Simon on 27.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

/*
 Important: please add a default case to your switch-Statements when asking for the Message-type (this will not be executed :))
 
 How to Work with Topics?
 If you want to create a topic go to Chatter.swift and add the Topic in the enum (with Description!)
 In the initializer of your chatter give possibleTopics a list of toppings your chatter want to talk about. (by default none)
 If you want to give individual answers for a ask to change the topic you can write them to sayNoToTopicChangeWith and sayYesToTopicChangeWith
 You can create your own Question to ask someone to change the topic. The Last word is computed and is the name of the topic.
 Now in your functions nextMessage() and responseForMessage you can ask the variable theCurrentTopic which Toping is now. With this you can adjust your answers to the topic.
 */
 


import UIKit

class Einstein: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "einstein"))
        
        // accepted Topics
        possibleTopics = [.none, .Science, .Relativity, .Physics]
        //sayYesToTopicChangeWith = "Yes, I want to talk about this 😊"
        sayNoToTopicChangeWith = ["No, thankyou.", "No, that is not what I want to talk with you about 😡"]
        askForATopicChange = ["Lets talk about", "Do you want to talk about", "I want to tell you something about"]
    }
    
    
    override func nextMessage() -> Message {
        if(theCurrentTopic == Topic.Science) {
            return [
                Message(content: "This is science.", type: .Statement),
                Message(content: "Relativity is complex, but this is relative", type: .Joke),
                Message(content: "Yes, but never forget: E = m*c^2", type: .Joke),
                Message(content: "Relativity", type: .changeTopic),
                Message(content: "Physics", type: .changeTopic),

            ].randomElement()
        }
        else {
        return [
            
            Message(content: "You could be right, I have to think about this.", type: .Statement),
            
            Message(content: "Yes, I know.", type: .Statement),
                        Message(content: "Maybe, maybe not. But who cares.", type: .Joke),
            Message(content: "Are you sure?", type: .QuestionBool),
            Message(content: "Do you calculated that?", type: .QuestionBool),
            Message(content: "Is this what you are really want to talk about?", type: .QuestionBool),
            Message(content: "What do you want to talk about?", type: .QuestionWhy),
            Message(content: "Why should that be?", type: .QuestionWhy),
            
            Message(content: "Science", type: .changeTopic),
            Message(content: "Physics", type: .changeTopic),
            ].randomElement()
        }
    }
    
    override func responseForMessage(message: Message) -> Message {
        if(theCurrentTopic == Topic.Science) {
            return Message(content: "The topping is science, I love it :)", type: .Statement)
        }
        else {
            return Message(content: "Hmm...", type: .Statement)
        }
    }
    
    
}
