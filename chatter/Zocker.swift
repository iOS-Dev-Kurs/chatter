//
//  Zocker.swift
//  chatter
//
//  Created by Christoph Blattgerste on 27.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Zocker: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "homer"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Why don't they kick him?! He's such a cheater!", type: .questionBool),
            Message(content: "Do you use the internet? I loose all the time", type: .questionBool),
            Message(content: "Real gamer do not clean up, they defragment", type: .joke),
            Message(content: "Yeah, I got it!!", type: .statement),
            Message(content: "...", type: .statement),
            Message(content: "Look, this is it!", type: .statement),
            Message(content: "I won't play this $@!/ing game anymore!", type: .statement),
            Message(content: "Get Nintendo or change the system...", type: .joke),
            Message(content: "I'll jump out of this windows!!", type: .statement)
            
        ].randomElement()
    
    }
    
    var angry = 0
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .questionWhy:
//            zählt die WhyFragen, Antworten werden immer genervter
            switch angry {
            case 0:
                angry += 1
                return Message(content: "That's no big deal. What a bit.", type: .statement)
            case 1:
                angry += 1
                return Message(content: "What's your idea?", type: .questionWhy)
            case 2:
                angry += 1
                return Message(content: "Are you serious?", type: .questionBool)
            case 3:
                angry += 1
                return Message(content: "This does not interest me at all", type: .statement)
            case 4:
                angry += 1
                return Message(content: "Shut up!! I have to concentrate!", type: .statement)
            default:
                angry = 0
                return Message(content: "Talk to my Hand!!", type: .statement)
        }
        case .questionBool:
            return [
                Message(content: "No", type: .statement),
                Message(content: "Do you?", type: .questionBool),
                Message(content: "What do you mean?", type: .questionBool)
            ].randomElement()
        case .statement:
            return Message(content: "...", type: .statement)
        case .joke:
            return Message(content: "I already knew this one..", type: .statement)
        }
        
    }
}
