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
            Message(content: "Do. Or do not. There is no try.", type: .Statement),
            Message(content: "May the force be with you.", type: .Statement),
            Message(content: "Wars not make one great.", type: .Statement),
            Message(content: "Judge me by my size, do you?", type: .QuestionBool),
            Message(content: "Patience you must have, my young padawan.", type: .Statement),
            Message(content: "Powerful you have become, the dark side I sense in you.", type: .Statement),
            Message(content: "Train yourself to let go of everything you fear to lose.", type: .Statement),
            Message(content: "You must unlearn what you have learned.", type: .Statement)
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return Message(content: "Hmm...", type: .Statement)
    }
    
    
}