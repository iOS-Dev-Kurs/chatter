//
//  Oettinger.swift
//  chatter
//
//  Created by Nikolai Krischke on 30.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Oettinger: Chatter {
    
    
    required init(){
        super.init(image: UIImage(named: "oettinger"))
        // set initial mood of oettinger to 2 because he looks funny
        self.mood = 2
    }
    
    
    override func nextMessage() -> Message {
        return [
            Message(content: "That makes me so quickly nobody after!", type: .Statement),
            Message(content: "Mood is \(mood)", type: .Statement),
            Message(content: "Two rasins meet each oser, says one to se oser: Why have you got a headlight? Because I have to go into se stollen!", type: .Joke)
        ].randomElement()
    }
    override func responseForMessage(message: Message) -> Message {
        switch message.type{
        case .Statement:
            return [
                Message(content: "If you want to enjoy life in full trains, you have to travel wis Deutsche Bahn.", type: .Statement, friendliness: 0)
                        ].randomElement()
        case .QuestionBool:
            return [
                Message(content: "Ladies and Gentlemen, sree hours of constructive questions and in a good atmosphere. I sink se comitee was very competent.", type: .QuestionBool, friendliness: -2)
                        ].randomElement()
        case .QuestionWhy:
            return [
                Message(content: "I'm not happy aber glücklich", type: .Statement, friendliness: 1),
                Message(content: "Evrybody does as he pleases", type: .Statement, friendliness: 2)
                        ].randomElement()
        case .Joke:
            return [
                Message(content: "Ahaha. Sat was funny.", type: .Statement)
                ].randomElement()
        }
    }
}