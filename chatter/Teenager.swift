//
//  Teenager.swift
//  chatter
//
//  Created by Viktor Adam on 01/05/16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Teenager : Chatter{
    
    required init() {
        super.init(image: UIImage(named: "Teenager"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Are you gay?", type: .questionBool),
            Message(content: "Do your parents h8 u?", type: .questionBool),
            Message(content: "Where are your balls?", type: .questionBool),
            Message(content: "Your mum runs left at Super Mario", type: .statement),
            Message(content: "Get rekt, boosted fgt", type: .statement),
            Message(content: "Get cancer", type: .statement),
            
            
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "What?", type: .questionBool),
                Message(content: "get rekt", type: .statement),
                Message(content: "I h8 you", type: .statement),
                Message(content: "fgt", type: .statement)
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "Why do you try so hard?", type: .questionWhy),
                Message(content: "get rekt", type: .statement),
                Message(content: "lol, you`re childish", type: .statement),
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "Why is your nose so big?", type: .questionWhy),
                Message(content: "fgt", type: .statement),
                Message(content: "I don`t care", type: .statement)
                ].randomElement()
        case .joke:
            return [
                Message(content: "Omg not funny", type: .statement),
                Message(content: "You are a joke", type: .statement)
                ].randomElement()
        }
    }
    
}
