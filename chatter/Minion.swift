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
            Message(content: "PAPAYA?", type: .questionBool),
            Message(content: "Banana?", type: .questionBool),
            Message(content: "Mibqis tu nomba?", type: .questionBool),
            Message(content: "Ka ko to", type: .statement),


                       ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "Bee Do! Bee Do! Bee Do! Bee Do!", type: .statement),
                Message(content: "PAPAYA!", type: .statement),
                Message(content: "Banana", type: .statement),
                Message(content: "Me want banana", type: .questionBool),
                Message(content: "Sa la ka!", type: .statement),
                Message(content: "Tatata bala tu", type: .statement),
                Message(content: "👍", type: .statement)
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "I'm somewhere where I don't know where I am!", type: .statement),
                Message(content: "Yeah, I think so.", type: .statement),
                Message(content: "Definitely. But that's a good thing 😉", type: .statement),
                Message(content: "Save me, Jeebus!", type: .statement),
                Message(content: "You'll have to speak up, I'm wearing a towel.", type: .statement)
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "The answer to life's problems aren't at the bottom of a bottle, they're on TV!", type: .statement),
                Message(content: "I've always wondered if there was a God, and now I know there is. It's me.", type: .statement),
                Message(content: "Who knows?!", type: .statement),
                Message(content: "Kids, you tried your best and you failed miserably. The lesson is, never try.", type: .statement),
                Message(content: "Look at me, I'm flying like Superman's dog!", type: .statement),
                Message(content: "Lisa, Vampires are make-believe, like elves, gremlins, and eskimos.", type: .statement),
                Message(content: "Only God knows why...", type: .statement)
                ].randomElement()
        case .joke:
            return [
                Message(content: "Ah, sweet pity. Where would my love life be without it?", type: .questionBool),
                Message(content: "I'm not a bad guy! I work hard, and I love my kids. So why should I spend half my Sunday hearing about how I'm going to Hell?", type: .statement),
                Message(content: "rofl 😆", type: .statement),
                Message(content: "Good one 😉", type: .statement),
                Message(content: "😀😀", type: .statement)
                ].randomElement()
        }
    }

}
