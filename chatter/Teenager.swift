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
            Message(content: "Are you gay?", type: .QuestionBool),
            Message(content: "Do your parents h8 u?", type: .QuestionBool),
            Message(content: "Where are your balls?", type: .QuestionBool),
            Message(content: "Your mum runs left at Super Mario", type: .Statement),
            Message(content: "Get rekt, boosted fgt", type: .Statement),
            Message(content: "Get cancer", type: .Statement),
            
            
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        case .Statement:
            return [
                Message(content: "What?", type: .QuestionBool),
                Message(content: "get rekt", type: .Statement),
                Message(content: "I h8 you", type: .Statement),
                Message(content: "fgt", type: .Statement)
                ].randomElement()
        case .QuestionBool:
            return [
                Message(content: "Why do you try so hard?", type: .QuestionWhy),
                Message(content: "get rekt", type: .Statement),
                Message(content: "lol, you`re childish", type: .Statement),
                ].randomElement()
        case .QuestionWhy:
            return [
                Message(content: "Why is your nose so big?", type: .QuestionWhy),
                Message(content: "fgt", type: .Statement),
                Message(content: "I don`t care", type: .Statement)
                ].randomElement()
        case .Joke:
            return [
                Message(content: "Omg not funny", type: .Statement),
                Message(content: "You are a joke", type: .Statement)
                ].randomElement()
        }
    }
    
}
