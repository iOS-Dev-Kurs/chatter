//
//  Newton.swift
//  chatter
//
//  Created by Max Simon on 27.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

//
//  Einstein.swift
//  chatter
//
//  Created by Max Simon on 27.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Newton: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "newton"))
        
        // accepted Topics
        possibleTopics = [.none, .Science, .Apples, .Physics]
        sayYesToTopicChangeWith = ["Oh Yes ❤️", "I thought you would never ask :D"]
        //sayNoToTopicChangeWith = ["Oh no, please not."]
    }
    
    
    override func nextMessage() -> Message {
        return [
            
            Message(content: "You could be right, I have to think about this.", type: .Statement),
            Message(content: "This is science.", type: .Statement),
            Message(content: "Yes, I know.", type: .Statement),
            Message(content: "I like apples.", type: .Joke),
            Message(content: "Yes, but never forget: F = m*a", type: .Joke),
            Message(content: "Maybe, maybe not. But who cares.", type: .Joke),
            Message(content: "Are you sure?", type: .QuestionBool),
            Message(content: "Do you calculated that?", type: .QuestionBool),
            Message(content: "Is this what you are really want to talk about?", type: .QuestionBool),
            Message(content: "Do you want an apple?", type: .QuestionBool),
            Message(content: "What do you want to talk about?", type: .QuestionWhy),
            Message(content: "Why should that be?", type: .QuestionWhy),
            
            Message(content: "Science", type: .changeTopic),
            Message(content: "Apples", type: .changeTopic),
            Message(content: "Physics", type: .changeTopic),
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return Message(content: "Hmm...", type: .Statement)
    }
    
    
}

