//
//  Barney.swift
//  chatter
//
//  Created by Colin Otchere on 29.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Barney : Chatter{
    
    required init() {
        super.init(image: UIImage(named : "barneystinson"))
    }
    
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Think of me like Yoda, but instead of being little and green I wear suits and I’m awesome. I’m your bro—I’m Broda!", type: .Statement),
            Message(content: "It’s gonna be legend-... wait for it… and I hope you’re not lactose intolerant because the second half of that word is DAIRY!", type: .Statement),
            
            Message(content: "Suits are full of joy. They’re the sartorial equivalent of a baby’s smile", type: .Statement),
            
            Message(content: "A lie is just a great story that someone ruined with the truth.", type: .Statement),
            
            Message(content: "Suit up! ", type: .Statement),
            
            Message(content: "Dude.. where's your suit? Just once, when I say suit up. I wish you'd put on a suit.", type: .Statement),
            Message(content: "God, it’s me, Barney. What up? I know we don’t talk much, but I know a lot of girls call out your name because of me.", type: .Statement),
            Message(content: "Boobs ?", type: .QuestionBool),
            Message(content: "You take a man's wife before you take his accidental curly.",type: .Statement),
            Message(content: "I need you to help me pick the suit I'm gonna wear when I walk down the aisle.",type: .Statement),
            Message(content: "Okay, pep talk! You can do this, but to be more accurate, you probably can’t. You’re way out of practice and she’s way too hot for you. So, remember, it’s not about scoring. It’s about believing you can do it, even though you probably can’t. Go get ‘em, Tiger!", type: .Statement),

            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        case .Statement:
            return [
                Message(content: "Okay Bro!", type: .Statement),
                Message(content: "👍", type: .Statement),
                Message(content: "I was about to enter my golden years. My Clooney years.",type: .Statement)
                ].randomElement()
        case .QuestionBool:
            return [
                Message(content: "Yeah, I think so.", type: .Statement),
                Message(content: "Definitely. But that's a good thing 😉", type: .Statement),
                Message(content: "You'll have to speak up, I'm wearing a towel.", type: .Statement)
                ].randomElement()
        case .QuestionWhy:
            return [
                Message(content: "Who knows?!", type: .Statement),
                Message(content: "I don't care.", type: .Statement),
                Message(content: "Only God knows why...", type: .Statement)
                ].randomElement()
        case .Joke:
            return [
                Message(content: "I'm not a bad guy! I work hard, and I love my kids. So why should I spend half my Sunday hearing about how I'm going to Hell?", type: .Statement),
                Message(content: "Legen...wait for it DAIRY😆", type: .Statement),
                Message(content: "Good one 😉", type: .Statement),
                Message(content: "😀😀", type: .Statement)
                ].randomElement()
        }
    }
    

    
}