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
            Message(content: "Why don't they kick him?! He's such a cheater!", type: .QuestionBool),
            Message(content: "Do you use the internet? I loose all the time", type: .QuestionBool),
            Message(content: "Real gamer do not clean up, they defragment", type: .Joke),
            Message(content: "Yeah, I got it!!", type: .Happy),
            Message(content: "...", type: .Annoyed),
            Message(content: "Look, this is it!", type: .Happy),
            Message(content: "I won't play this $@!/ing game anymore!", type: .Annoyed),
            Message(content: "Get Nintendo or change the system...", type: .Joke),
            Message(content: "I'll jump out of this windows!!", type: .Statement)
            
        ].randomElement()
    
    }
    
    var angry = 0
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        case .QuestionWhy:
//            zählt die WhyFragen, Antworten werden immer genervter
            switch angry {
            case 0:
                angry += 1
                return Message(content: "That's no big deal. What a bit.", type: .Statement)
            case 1:
                angry += 1
                return Message(content: "What's your idea?", type: .QuestionWhy)
            case 2:
                angry += 1
                return Message(content: "Are you serious?", type: .QuestionBool)
            case 3:
                angry += 1
                return Message(content: "This does not interest me at all", type: .Statement)
            case 4:
                angry += 1
                return Message(content: "Shut up!! I have to concentrate!", type: .Statement)
            default:
                angry = 0
                return Message(content: "Talk to my Hand!!", type: .Statement)
        }
        case .QuestionBool:
            return [
                Message(content: "No", type: .Statement),
                Message(content: "Do you?", type: .QuestionBool),
                Message(content: "What do you mean?", type: .QuestionBool)
            ].randomElement()
        case .Statement:
            return Message(content: "...", type: .Statement)
        case .Joke:
            return Message(content: "I already knew this one..", type: .Statement)
        default:
            return Message(content: "I'm hungry..", type: .Statement)
        }
        
    }
}