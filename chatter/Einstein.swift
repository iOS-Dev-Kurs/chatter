//
//  Einstein.swift
//  chatter
//
//  Created by Kugele, Alexander on 11.05.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import Foundation

import UIKit

class Einstein: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "einstein"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "E=M (in naturla units)", type: .Statement),
            Message(content: "...", type: .Statement),
            Message(content: "Do you believe in Quantum physics", type: .QuestionBool),
            Message(content: "Why not classical?", type: .QuestionWhy),
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return [
            Message(content: "Because of the Newtonian Laws", type: .QuestionWhy),
            ].randomElement()
    }
    
    
}