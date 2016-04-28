//
//  Jimi.swift
//  chatter
//
//  Created by Reiser, Philipp Luca on 28.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Jimi: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "jimi"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Blues is easy to play, but hard to feel.", type: .Statement),
            Message(content: "Purple haze, all in my brain", type: .Statement),
            Message(content: "But first, are you experienced?", type: .QuestionBool),
            Message(content: "Is it tomorrow or just the end of the time", type: .QuestionBool),
            Message(content: "If 6 was 9", type: .Statement),
            Message(content: "Uh-have you ever been experienced? Well, I have", type: .QuestionBool),
            
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return[
            Message(content: "I try to get up everyday", type: .Statement),
            Message(content: "Knowledge speaks, wisom listens.", type: .Statement)
        ].randomElement()
    }
    
    
}

