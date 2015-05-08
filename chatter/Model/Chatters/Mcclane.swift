//
//  Mcclane.swift
//  chatter
//
//  Created by Klaus Naumann on 07.05.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import UIKit

class Mcclane: Chatter {

    required init() {
        super.init(image: UIImage(named: "mcclane"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Story of my life.", type: .Statement),
            Message(content: "I'm a cop from New York.", type: .Statement),
            Message(content: "Drop the gun!", type: .Statement),
            Message(content: "Who's driving this car, Stevie Wonder?", type: .QuestionBool),
            Message(content: "Why'd you have to nuke the whole building, Hans? ", type: .QuestionWhy),
            Message(content: "Welcome to the party, pal.", type: .Statement),
            Message(content: "Yippee-ki-yay, motherf***er.", type: .Statement)
        ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return [
            Message(content: "It's okay, I'm a cop.", type: .QuestionWhy),
            Message(content: "It rings a bell, yeah.", type: .QuestionBool),
            Message(content: "No, not since this morning.", type: .QuestionBool),
            Message(content: "You tell me, kid. You're the criminal.", type: .QuestionWhy),
            Message(content: "Yeah. That's what my captain keeps telling me.", type: .Statement),
            Message(content: "Someone give me some aspirins.", type: .Joke)
        ].randomElement()
    }
    

}