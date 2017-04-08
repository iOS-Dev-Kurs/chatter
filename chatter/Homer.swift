//
//  Homer.swift
//  chatter
//
//  Created by Libor, Julian Timo Andreas on 29.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Homer: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "homer"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Just because I don't care doesn't mean I don't understand", type: .statement),
            Message(content: "Operator! Give me the number for 911.", type: .joke),
            Message(content: "I'm not a bad guy! I work hard, and I love my kids. So why should I spend half my Sunday hearing about how I'm going to Hell?", type: .questionWhy),
            Message(content: "What do we need a psychiatrist for? We know our kid is nuts", type: .questionWhy),
            Message(content: "'To Start Press Any Key'. Where's the ANY key? ", type: .questionWhy),
            Message(content: "I'm in no condition to drive...wait! I shouldn't listen to myself, I'm drunk!", type: .statement),
            Message(content: "Oh, why do my actions have consequences?", type: .questionWhy),
            Message(content: "I never realized! Some restaurants are better than others!", type: .questionBool),
            Message(content: "Mmmmm. Charred and moist. Like Satan's burps.", type: .questionBool),
            Message(content: "Donuts. Is there anything they can't do?", type: .questionBool),
            Message(content: "Kill my boss? Do I dare live out the American dream?", type: .questionBool),
            Message(content: "I'm having the best day of my life, and I owe it all to not going to Church!", type: .statement),
            Message(content: "Dad, you've done a lot of great things, but you're a very old man, and old people are useless. ", type: .statement),
            Message(content: "Beer: The cause of, and solution to, all of life's problems.", type: .joke),
            Message(content: "Trying is the first step toward failure.", type: .statement)
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "[drinking Duff beer] Ah... you can really taste the goat.", type: .statement),
                Message(content: "Absolutely!", type: .statement),
                Message(content: "DOH.", type: .statement),
                Message(content: "Oh, really?!", type: .questionBool),
                Message(content: "DOH!", type: .statement),
                Message(content: "What?! I think I spider.", type: .statement),
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
