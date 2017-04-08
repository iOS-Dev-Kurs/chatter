//
//  Nathan.swift
//  chatter
//
//  Created by Kleimaier, Dennis on 25.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Nathan: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "Nathan"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Yep, that's my blood... that's a lot of my blood...", type: .joke),
            Message(content: "Great, power's out, and a girl's trapped. I swear to God, if there's a Zombie around the next corner...", type: .joke),
            Message(content: "Oh no I don't like that noise!", type: .statement),
            Message(content: "You couldn't find your ass with both hands.", type: .statement),
            Message(content: "Enjoying yourself, pal?", type: .questionBool),
            Message(content: "This is bullshit!", type: .statement),
            Message(content: "Oh, careful now - wouldn't want you to melt.", type: .statement),
            Message(content: "All right, darling?", type: .questionBool)
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type{
        case .statement:
            return [
                    Message(content: "She's a lot tougher than she looks, thank you.", type: .statement),
                    Message(content: "You brought a hooker to church?", type: .questionBool),
                    Message(content: "Yeah, good luck pal, that's almost impossible to- oh, you did it. Nice.", type: .statement),
                    Message(content: "Is that a popcorn machine?", type: .questionWhy),
                    Message(content: "Three goddamn bullets? How the hell did you do this with three goddamn bullets?", type: .questionWhy),
                    Message(content: "Sully?!", type: .questionBool)
                    ].randomElement()
        case .questionBool:
            return [
                Message(content: "No. No. I'm glad you find this so funny.", type: .statement),
                Message(content: "Oh, please.", type: .statement),
                Message(content: "Y'know what? Maybe I broke hers.", type: .questionBool),
                Message(content: "See if you can light it.", type: .statement)
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "Haha - that's cute.", type: .statement),
                Message(content: "Because that's the way it is.", type: .statement),
                Message(content: "Well, hey, prison isn't too bad. Look, I've got my own BUCKET!", type: .questionBool),
                Message(content: "Just accept it, sully.", type: .statement),
                Message(content: "You just count to five and pull the cord. How hard could that be? AHHHHHH! Onetwothreefourfive!", type: .statement)
                ].randomElement()
        case .joke:
            return [
                Message(content: "I'm sorry, do you have a plan to go along with that grenade?", type: .joke),
                Message(content: "Aren't you forgetting about somebody?", type: .statement),
                Message(content: "Do it quietly...", type: .statement),
                Message(content: "Are you sure about this?", type: .questionBool),
                Message(content: "What does that mean?!", type: .statement)
                ].randomElement()
        }
    }
    
    
}
