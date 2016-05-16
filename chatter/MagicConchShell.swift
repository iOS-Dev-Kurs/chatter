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
            Message(content: "Ask me a question.", type: .Statement),
            Message(content: "", type: .Statement),
            Message(content: "", type: .QuestionBool),
            Message(content: "", type: .QuestionWhy),
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
            
        case .Statement:
            return[
                
                Message(content: "No.", type: .Statement),
                Message(content: "Yes.", type: .Statement),
                Message(content: "I don't think so.", type: .Statement),
                ].randomElement()
            
        case .QuestionBool:
            return[
                
                Message(content: "No.", type: .Statement),
                Message(content: "Yes.", type: .Statement),
                Message(content: "Maybe someday.", type: .Statement),
                Message(content: "Try asking again.", type: .Statement),
                Message(content: "I don't think so.", type: .Statement),
                ].randomElement()
            
        case .QuestionWhy:
            return[
                
                Message(content: "Try asking again.", type: .Statement),
                ].randomElement()
            
        case .Joke:
            return[
                
                Message(content: "Try joking again.", type: .Joke),
                Message(content: "No.", type: .Statement),
                ].randomElement()
        }
    }
    
}
