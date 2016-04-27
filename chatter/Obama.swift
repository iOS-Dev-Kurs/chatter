//
//  Obama.swift
//  chatter
//
//  Created by Habib Gahbiche on 25/04/2016.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Obama: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "obama"))
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        
        case .Statement:
            return [
                Message(content: "What did that have anything to do with what I said?", type: .QuestionWhy),
                Message(content: "You, sir, are a weird person", type: .Statement),
                Message(content: "One day, Humans will land on Mars.", type: .Statement),
                Message(content: "I like your personality", type: .Statement),
                ].randomElement();
            
        case .QuestionBool:
            return [
                Message(content: "Yes, sir", type: .Statement),
                Message(content: "Why are you asking?", type: .QuestionWhy),
                Message(content: "Negative.", type: .QuestionWhy),
                Message(content: "After consulting my advisor on that issue I can say yes, sir.", type: .Statement)
                ].randomElement();
            
        case .QuestionWhy:
            return [
                
                Message(content: "Why? What? Where? How? ... Whatever my answer is, you won't find it satisfying", type: .Statement),
                Message(content: "Because I said so", type: .Statement),
                Message(content: "Are you kidding me?", type: .Joke),
                Message(content: "Because that's what it takes to be a ", type: .Statement),
                Message(content: "I'm afraid that's a classified information", type: .Statement),
                ].randomElement();
            
        case .Joke:
            return [
                Message(content: "That, sir, deserves an Obama lol", type: .Statement),
                Message(content: "Sorry to disappoint you, but coming from you, that joke of yours sounds silly", type: .Statement),
                Message(content: "I heard funnier jokes, but that one will pass", type: .Statement),
                Message(content: "There was a time when people used to be funny... What happened?", type: .QuestionWhy),
                Message(content: "Funny guy! You sir, deserve a cookie!", type: .Statement)
            ].randomElement()
        }
        
        
    }
    
    
    override func nextMessage() -> Message {
        return [
        Message(content: "I think enyone can be a leader!", type: .Statement),
        Message(content: "Do you want to hear a joke? Trump", type: .Joke),
        Message(content: "What do you think about my airplane?", type: .QuestionWhy),
        Message(content: "Do you think there are aliens somewhere?", type: .QuestionBool),
        Message(content: "I think pinguins are pretty", type: .Statement),
        Message(content: "I am a big fan of controversies", type: .Statement),
        
        ].randomElement()
    }
    
}
