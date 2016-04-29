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
            Message(content: "Just because I don't care doesn't mean I don't understand", type: .Statement),
            Message(content: "Operator! Give me the number for 911.", type: .Joke),
            Message(content: "I'm not a bad guy! I work hard, and I love my kids. So why should I spend half my Sunday hearing about how I'm going to Hell?", type: .QuestionWhy),
            Message(content: "What do we need a psychiatrist for? We know our kid is nuts", type: .QuestionWhy),
            Message(content: "'To Start Press Any Key'. Where's the ANY key? ", type: .QuestionWhy),
            Message(content: "I'm in no condition to drive...wait! I shouldn't listen to myself, I'm drunk!", type: .Statement),
            Message(content: "Oh, why do my actions have consequences?", type: .QuestionWhy),
            Message(content: "I never realized! Some restaurants are better than others!", type: .QuestionBool),
            Message(content: "Mmmmm. Charred and moist. Like Satan's burps.", type: .QuestionBool),
            Message(content: "Donuts. Is there anything they can't do?", type: .QuestionBool),
            Message(content: "Kill my boss? Do I dare live out the American dream?", type: .QuestionBool),
            Message(content: "I'm having the best day of my life, and I owe it all to not going to Church!", type: .Statement),
            Message(content: "Dad, you've done a lot of great things, but you're a very old man, and old people are useless. ", type: .Statement),
            Message(content: "Beer: The cause of, and solution to, all of life's problems.", type: .Joke),
            Message(content: "Trying is the first step toward failure.", type: .Statement)
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        case .Statement:
            return [
                Message(content: "[drinking Duff beer] Ah... you can really taste the goat.", type: .Statement),
                Message(content: "Absolutely!", type: .Statement),
                Message(content: "DOH.", type: .Statement),
                Message(content: "Oh, really?!", type: .QuestionBool),
                Message(content: "DOH!", type: .Statement),
                Message(content: "What?! I think I spider.", type: .Statement),
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
