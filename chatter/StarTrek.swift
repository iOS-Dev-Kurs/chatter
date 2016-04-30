//
//  Star Trek.swift
//  chatter
//
//  Created by Marvin A. Ruder on 4/29/16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class StarTrek: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "startrek"))
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
            
        case .Statement:
            return [
                Message(content: "When this is over, I owe you a drink.", type: .Statement),
                Message(content: "Live long, and prosper.", type: .Statement),
                Message(content: "Maximum warp. Punch it.", type: .Statement),
                Message(content: "Have you disengaged the external inertial dampener?", type: .QuestionBool),
                Message(content: "Is the parking brake on?", type: .Statement),
                Message(content: "Everyone remember where we parked?", type: .QuestionBool),
                Message(content: "I'm s... Wha... It... Are you from the future?", type: .QuestionBool),
                Message(content: "You heard the lady. Let's go to work!", type: .Statement),
                Message(content: "The needs of the many outweigh the needs of the few.", type: .Statement),
                Message(content: "Well, that's brilliant. Do they still have sandwiches there?", type: .QuestionBool)
                ].randomElement();
            
        case .QuestionBool:
            return [
                Message(content: "No, not really. Not this time.", type: .Statement),
                Message(content: "Yeah, tell me something I DON'T know!", type: .Statement),
                Message(content: "Very much so, sir.", type: .Statement),
                Message(content: "Uh, no. I'll figure it out. I'm just...", type: .Statement),
                Message(content: "For everything, there is a first time.", type: .Statement),
                Message(content: "I, um, yes. Can I get a towel, please?", type: .Statement),
                Message(content: "Yeah. Well, I got nowhere else to go. The ex-wife took the whole damn planet in the divorce. All I got left is my bones.", type: .Statement),
                Message(content: "We're about to find out, Data.", type: .Statement),
                Message(content: "Make it so, Number One!", type: .Statement),
                Message(content: "We are what we are, and we're doing the best we can. It is not for you to set the standards by which we should be judged!", type: .Statement),
                Message(content: "Preferably not.", type: .Statement),
                Message(content: "I have no comment on the matter.", type: .Statement)
                ].randomElement();
            
        case .QuestionWhy:
            return [
                Message(content: "I will be interested to know what we are talking about.", type: .Statement),
                Message(content: "Hey, you're the genius. You figure it out.", type: .Statement),
                Message(content: "Dammit, man! I'm a doctor, not a physicist!", type: .Statement),
                Message(content: "When you eliminate the impossible, whatever remains, however improbable, must be the truth.", type: .Statement)
                ].randomElement();
            
        case .Joke:
            return [
                Message(content: "How many ears does Picard have? - Three. A right ear. A left ear. And a final front ear", type: .Statement),
                Message(content: "How many Vulcans does it take to screw in a light bulb? - Aproximately 1.000000000000000...", type: .Statement),
                Message(content: "How many Borg does it take to change a light-bulb? - All of them", type: .Statement),
                Message(content: "How many Klingons does it take to change a lightbulb? - Two. One to screw it in, and one to stab the other in the back and take all of the credit.", type: .Statement),
                Message(content: "What did Worf say when small ice asteroids began hitting the Enterprise hull? - Captain, we are being hailed.", type: .Statement)
                ].randomElement()
        }
        
        
    }
    
    
    override func nextMessage() -> Message {
        return [
            Message(content: "I have been — and always shall be — your friend.", type: .Statement),
            Message(content: "Beam me up, Scotty!", type: .Statement),
            Message(content: "Out of the chair.", type: .Statement),
            Message(content: "Space… the final frontier.", type: .Statement),
            Message(content: "I changed the conditions of the test. I don’t like to lose.", type: .Statement),
            Message(content: "I think it's time to try some unsafe velocities.", type: .Statement),
            Message(content: "Red alert! All crew to battle stations!", type: .Statement),
            Message(content: "I like this ship! You know, it's exciting!", type: .Statement)
            ].randomElement()
    }
    
}
