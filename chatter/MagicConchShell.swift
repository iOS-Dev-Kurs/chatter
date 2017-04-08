//
//  Magic Conch Shell.swift
//  chatter
//
//  Created by Thomas Steinle on 5/02/16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//


import UIKit

class MagicConchShell: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "magicconchshell"))
    }
    
    override func nextMessage() -> Message {
    return [
            Message(content: "Ask me a question.", type: .statement),
            Message(content: "", type: .statement),
            Message(content: "", type: .questionBool),
            Message(content: "", type: .questionWhy),
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
            
        case .statement:
            return[
                
                Message(content: "No.", type: .statement),
                Message(content: "Yes.", type: .statement),
                Message(content: "I don't think so.", type: .statement),
                ].randomElement()
            
        case .questionBool:
            return[
                
                Message(content: "No.", type: .statement),
                Message(content: "Yes.", type: .statement),
                Message(content: "Maybe someday.", type: .statement),
                Message(content: "Try asking again.", type: .statement),
                Message(content: "I don't think so.", type: .statement),
                ].randomElement()
            
        case .questionWhy:
            return[
                
                Message(content: "Try asking again.", type: .statement),
                ].randomElement()
            
        case .joke:
            return[
                
                Message(content: "Try joking again.", type: .joke),
                Message(content: "No.", type: .statement),
                ].randomElement()
        }
    }
    
}
