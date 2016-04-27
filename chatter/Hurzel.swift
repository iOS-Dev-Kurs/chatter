//
//  Hurzel.swift
//  chatter
//
//  Created by John Ziegler on 27.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Hurzel: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "hurzel"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "You never know.", type: .Statement),
            Message(content: "Didn't get that.", type: .Statement),
            Message(content: "Am I too stupid for this?", type: .QuestionBool),
            Message(content: "Let's call it Eggy!", type: .Statement),
            Message(content: "What a hack!", type: .Statement),
            Message(content: "<3 me?", type: .QuestionBool),
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return Message(content: "Öhhhhh ....", type: .Statement)
    }
    
    
}