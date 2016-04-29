//
//  Minion.swift
//  chatter
//
//  Created by Colin Otchere on 29.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Minion : Chatter{
    
    required init() {
        super.init(image: UIImage(named: "minion"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "PAPAYA?", type: .QuestionBool),
            Message(content: "Banana?", type: .QuestionBool),
            Message(content: "Mibqis tu nomba?", type: .QuestionBool),
            Message(content: "Ka ko to", type: .Statement),


                       ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        case .Statement:
            return [
                Message(content: "Bee Do! Bee Do! Bee Do! Bee Do!", type: .Statement),
                Message(content: "PAPAYA!", type: .Statement),
                Message(content: "Banana", type: .Statement),
                Message(content: "Me want banana", type: .QuestionBool),
                Message(content: "Sa la ka!", type: .Statement),
                Message(content: "Tatata bala tu", type: .Statement),
                Message(content: "👍", type: .Statement)
                ].randomElement()
        case .QuestionBool:
            return [
                Message(content: "I'm somewhere where I don't know where I am!", type: .Statement),
                Message(content: "Yeah, I think so.", type: .Statement),
                Message(content: "Definitely. But that's a good thing 😉", type: .Statement),
                Message(content: "Save me, Jeebus!", type: .Statement),
                Message(content: "You'll have to speak up, I'm wearing a towel.", type: .Statement)
                ].randomElement()
        case .QuestionWhy:
            return [
                Message(content: "The answer to life's problems aren't at the bottom of a bottle, they're on TV!", type: .Statement),
                Message(content: "I've always wondered if there was a God, and now I know there is. It's me.", type: .Statement),
                Message(content: "Who knows?!", type: .Statement),
                Message(content: "Kids, you tried your best and you failed miserably. The lesson is, never try.", type: .Statement),
                Message(content: "Look at me, I'm flying like Superman's dog!", type: .Statement),
                Message(content: "Lisa, Vampires are make-believe, like elves, gremlins, and eskimos.", type: .Statement),
                Message(content: "Only God knows why...", type: .Statement)
                ].randomElement()
        case .Joke:
            return [
                Message(content: "Ah, sweet pity. Where would my love life be without it?", type: .QuestionBool),
                Message(content: "I'm not a bad guy! I work hard, and I love my kids. So why should I spend half my Sunday hearing about how I'm going to Hell?", type: .Statement),
                Message(content: "rofl 😆", type: .Statement),
                Message(content: "Good one 😉", type: .Statement),
                Message(content: "😀😀", type: .Statement)
                ].randomElement()
        }
    }

}
