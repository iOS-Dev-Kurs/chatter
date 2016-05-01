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
            Message(content: "No.", type: .Statement),
            Message(content: "Yes", type: .QuestionBool),
            Message(content: "Maybe someday.", type: .Statement),
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return Message(content: "No.", type: .Statement)
    }
    
}
