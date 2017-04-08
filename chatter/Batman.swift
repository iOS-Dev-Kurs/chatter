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
            Message(content: "Batman", type: .statement),
            Message(content: "Batwayne", type: .statement),
            Message(content: "Na Na Na Na Na Na Na Na ....", type: .statement),
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type{
        case.joke:
            return[
                Message(content: "I'm Batwayne!", type: .statement),
                Message(content: "All jokes aside, WHERE ARE THEY?", type: .questionWhy)
                ].randomElement()
        case.questionBool:
            return Message(content: "Because I'm Batman.", type: .statement)
        case.questionWhy:
            return[
                Message(content: "I'm Batman!", type: .statement),
                Message(content: "Let me ask my BatComputer.", type: .statement),
                Message(content: "Because bats frighten me.", type: .statement),
                Message(content: "So we can learn to pick ourselves up again.", type: .statement)
                ].randomElement()
        case.statement:
            return [
                Message(content: "Save me Superman.", type: .statement),
                Message(content: "I won’t kill you, but I don’t I have to save you.", type: .statement),
                Message(content: "It's not who I am underneath, but what I do that defines me.", type: .statement),
                Message(content: "A hero can be anyone, even a man doing something as simple and reassuring as putting a coat on a young boy’s shoulders to let him know the world hadn’t ended.", type: .statement)
                ].randomElement()
        }
    }
}
