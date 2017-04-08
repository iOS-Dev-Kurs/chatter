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
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        
        case .statement:
            return [
                Message(content: "What did that have anything to do with what I said?", type: .questionWhy),
                Message(content: "You, sir, are a weird person", type: .statement),
                Message(content: "One day, Humans will land on Mars.", type: .statement),
                Message(content: "I like your personality", type: .statement),
                ].randomElement();
            
        case .questionBool:
            return [
                Message(content: "Yes, sir", type: .statement),
                Message(content: "Why are you asking?", type: .questionWhy),
                Message(content: "Negative.", type: .questionWhy),
                Message(content: "After consulting my advisor on that issue I can say yes, sir.", type: .statement)
                ].randomElement();
            
        case .questionWhy:
            return [
                
                Message(content: "Why? What? Where? How? ... Whatever my answer is, you won't find it satisfying", type: .statement),
                Message(content: "Because I said so", type: .statement),
                Message(content: "Are you kidding me?", type: .joke),
                Message(content: "Because that's what it takes to be a ", type: .statement),
                Message(content: "I'm afraid that's a classified information", type: .statement),
                ].randomElement();
            
        case .joke:
            return [
                Message(content: "That, sir, deserves an Obama lol", type: .statement),
                Message(content: "Sorry to disappoint you, but coming from you, that joke of yours sounds silly", type: .statement),
                Message(content: "I heard funnier jokes, but that one will pass", type: .statement),
                Message(content: "There was a time when people used to be funny... What happened?", type: .questionWhy),
                Message(content: "Funny guy! You sir, deserve a cookie!", type: .statement)
            ].randomElement()
        }
        
        
    }
    
    
    override func nextMessage() -> Message {
        return [
        Message(content: "I think enyone can be a leader!", type: .statement),
        Message(content: "Do you want to hear a joke? Trump", type: .joke),
        Message(content: "What do you think about my airplane?", type: .questionWhy),
        Message(content: "Do you think there are aliens somewhere?", type: .questionBool),
        Message(content: "I think pinguins are pretty", type: .statement),
        Message(content: "I am a big fan of controversies", type: .statement),
        
        ].randomElement()
    }
    
}
