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
            Message(content: "Yep, that's my blood... that's a lot of my blood...", type: .Joke),
            Message(content: "Great, power's out, and a girl's trapped. I swear to God, if there's a Zombie around the next corner...", type: .Joke),
            Message(content: "Oh no I don't like that noise!", type: .Statement),
            Message(content: "You couldn't find your ass with both hands.", type: .Statement),
            Message(content: "Enjoying yourself, pal?", type: .QuestionBool),
            Message(content: "This is bullshit!", type: .Statement),
            Message(content: "Oh, careful now - wouldn't want you to melt.", type: .Statement),
            Message(content: "All right, darling?", type: .QuestionBool)
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type{
        case .Statement:
            return [
                    Message(content: "She's a lot tougher than she looks, thank you.", type: .Statement),
                    Message(content: "You brought a hooker to church?", type: .QuestionBool),
                    Message(content: "Yeah, good luck pal, that's almost impossible to- oh, you did it. Nice.", type: .Statement),
                    Message(content: "Is that a popcorn machine?", type: .QuestionWhy),
                    Message(content: "Three goddamn bullets? How the hell did you do this with three goddamn bullets?", type: .QuestionWhy),
                    Message(content: "Sully?!", type: .QuestionBool)
                    ].randomElement()
        case .QuestionBool:
            return [
                Message(content: "No. No. I'm glad you find this so funny.", type: .Statement),
                Message(content: "Oh, please.", type: .Statement),
                Message(content: "Y'know what? Maybe I broke hers.", type: .QuestionBool),
                Message(content: "See if you can light it.", type: .Statement)
                ].randomElement()
        case .QuestionWhy:
            return [
                Message(content: "Haha - that's cute.", type: .Statement),
                Message(content: "Because that's the way it is.", type: .Statement),
                Message(content: "Well, hey, prison isn't too bad. Look, I've got my own BUCKET!", type: .QuestionBool),
                Message(content: "Just accept it, sully.", type: .Statement),
                Message(content: "You just count to five and pull the cord. How hard could that be? AHHHHHH! Onetwothreefourfive!", type: .Statement)
                ].randomElement()
        case .Joke:
            return [
                Message(content: "I'm sorry, do you have a plan to go along with that grenade?", type: .Joke),
                Message(content: "Aren't you forgetting about somebody?", type: .Statement),
                Message(content: "Do it quietly...", type: .Statement),
                Message(content: "Are you sure about this?", type: .QuestionBool),
                Message(content: "What does that mean?!", type: .Statement)
                ].randomElement()
        default:
            return Message(content: "Not implemented.", type: .Statement)
        }
    }
    
    
}
