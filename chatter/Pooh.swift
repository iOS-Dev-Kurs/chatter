//
//  Pooh.swift
//  chatter
//
//  Created by Katja D on 11.04.17.
//  Copyright © 2017 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Pooh: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "pooh"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "What day is today?", type: .statement),
            Message(content: "What day is tomorrow?", type: .questionWhy),
            Message(content: "Are we going out tonight?", type: .questionBool),
            Message(content: "Is Piglet my best friend?", type:  .joke),
                ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "My favorite day", type: .statement),
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "I think so.", type: .statement),
                Message(content: "Not at all.", type: .statement),
                Message(content: "Precisely.", type: .statement),
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "Monday.", type: .statement),
                Message(content: "Tuesday.", type: .statement),
                Message(content: "Wednesday.", type: .statement)
                ].randomElement()
        case .joke:
            return [
                Message(content: "Yes", type: .questionBool),
                Message(content: "I nearly had to laugh", type: .statement)
                ].randomElement()
        }
    }
    
    
}
