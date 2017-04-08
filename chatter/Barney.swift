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
            Message(content: "Think of me like Yoda, but instead of being little and green I wear suits and I’m awesome. I’m your bro—I’m Broda!", type: .statement),
            Message(content: "It’s gonna be legend-... wait for it… and I hope you’re not lactose intolerant because the second half of that word is DAIRY!", type: .statement),
            
            Message(content: "Suits are full of joy. They’re the sartorial equivalent of a baby’s smile", type: .statement),
            
            Message(content: "A lie is just a great story that someone ruined with the truth.", type: .statement),
            
            Message(content: "Suit up! ", type: .statement),
            
            Message(content: "Dude.. where's your suit? Just once, when I say suit up. I wish you'd put on a suit.", type: .statement),
            Message(content: "God, it’s me, Barney. What up? I know we don’t talk much, but I know a lot of girls call out your name because of me.", type: .statement),
            Message(content: "Boobs ?", type: .questionBool),
            Message(content: "You take a man's wife before you take his accidental curly.",type: .statement),
            Message(content: "I need you to help me pick the suit I'm gonna wear when I walk down the aisle.",type: .statement),
            Message(content: "Okay, pep talk! You can do this, but to be more accurate, you probably can’t. You’re way out of practice and she’s way too hot for you. So, remember, it’s not about scoring. It’s about believing you can do it, even though you probably can’t. Go get ‘em, Tiger!", type: .statement),

            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "Okay Bro!", type: .statement),
                Message(content: "👍", type: .statement),
                Message(content: "I was about to enter my golden years. My Clooney years.",type: .statement)
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "Yeah, I think so.", type: .statement),
                Message(content: "Definitely. But that's a good thing 😉", type: .statement),
                Message(content: "You'll have to speak up, I'm wearing a towel.", type: .statement)
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "Who knows?!", type: .statement),
                Message(content: "I don't care.", type: .statement),
                Message(content: "Only God knows why...", type: .statement)
                ].randomElement()
        case .joke:
            return [
                Message(content: "I'm not a bad guy! I work hard, and I love my kids. So why should I spend half my Sunday hearing about how I'm going to Hell?", type: .statement),
                Message(content: "Legen...wait for it DAIRY😆", type: .statement),
                Message(content: "Good one 😉", type: .statement),
                Message(content: "😀😀", type: .statement)
                ].randomElement()
        }
    }
    

    
}
