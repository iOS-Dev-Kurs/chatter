//
//  Batman.swift
//  chatter
//
//  Created by Frederik Teßmann on 1.5.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Batman: Chatter {
    
    required init() {
        super.init(image: UIImage(named : "batman"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Batman", type: .Statement),
            Message(content: "Batwayne", type: .Statement),
            Message(content: "Na Na Na Na Na Na Na Na ....", type: .Statement),
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type{
        case.Joke:
            return[
                Message(content: "I'm Batwayne!", type: .Statement),
                Message(content: "All jokes aside, WHERE ARE THEY?", type: .QuestionWhy)
                ].randomElement()
        case.QuestionBool:
            return Message(content: "Because I'm Batman.", type: .Statement)
        case.QuestionWhy:
            return[
                Message(content: "I'm Batman!", type: .Statement),
                Message(content: "Let me ask my BatComputer.", type: .Statement),
                Message(content: "Because bats frighten me.", type: .Statement),
                Message(content: "So we can learn to pick ourselves up again.", type: .Statement)
                ].randomElement()
        case.Statement:
            return [
                Message(content: "Save me Superman.", type: .Statement),
                Message(content: "I won’t kill you, but I don’t I have to save you.", type: .Statement),
                Message(content: "It's not who I am underneath, but what I do that defines me.", type: .Statement),
                Message(content: "A hero can be anyone, even a man doing something as simple and reassuring as putting a coat on a young boy’s shoulders to let him know the world hadn’t ended.", type: .Statement)
                ].randomElement()
        }
    }
}
