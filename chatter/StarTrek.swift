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
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
            
        case .statement:
            return [
                Message(content: "When this is over, I owe you a drink.", type: .statement),
                Message(content: "Live long, and prosper.", type: .statement),
                Message(content: "Maximum warp. Punch it.", type: .statement),
                Message(content: "Have you disengaged the external inertial dampener?", type: .questionBool),
                Message(content: "Is the parking brake on?", type: .statement),
                Message(content: "Everyone remember where we parked?", type: .questionBool),
                Message(content: "I'm s... Wha... It... Are you from the future?", type: .questionBool),
                Message(content: "You heard the lady. Let's go to work!", type: .statement),
                Message(content: "The needs of the many outweigh the needs of the few.", type: .statement),
                Message(content: "Well, that's brilliant. Do they still have sandwiches there?", type: .questionBool)
                ].randomElement();
            
        case .questionBool:
            return [
                Message(content: "No, not really. Not this time.", type: .statement),
                Message(content: "Yeah, tell me something I DON'T know!", type: .statement),
                Message(content: "Very much so, sir.", type: .statement),
                Message(content: "Uh, no. I'll figure it out. I'm just...", type: .statement),
                Message(content: "For everything, there is a first time.", type: .statement),
                Message(content: "I, um, yes. Can I get a towel, please?", type: .statement),
                Message(content: "Yeah. Well, I got nowhere else to go. The ex-wife took the whole damn planet in the divorce. All I got left is my bones.", type: .statement),
                Message(content: "We're about to find out, Data.", type: .statement),
                Message(content: "Make it so, Number One!", type: .statement),
                Message(content: "We are what we are, and we're doing the best we can. It is not for you to set the standards by which we should be judged!", type: .statement),
                Message(content: "Preferably not.", type: .statement),
                Message(content: "I have no comment on the matter.", type: .statement)
                ].randomElement();
            
        case .questionWhy:
            return [
                Message(content: "I will be interested to know what we are talking about.", type: .statement),
                Message(content: "Hey, you're the genius. You figure it out.", type: .statement),
                Message(content: "Dammit, man! I'm a doctor, not a physicist!", type: .statement),
                Message(content: "When you eliminate the impossible, whatever remains, however improbable, must be the truth.", type: .statement)
                ].randomElement();
            
        case .joke:
            return [
                Message(content: "How many ears does Picard have? - Three. A right ear. A left ear. And a final front ear", type: .statement),
                Message(content: "How many Vulcans does it take to screw in a light bulb? - Aproximately 1.000000000000000...", type: .statement),
                Message(content: "How many Borg does it take to change a light-bulb? - All of them", type: .statement),
                Message(content: "How many Klingons does it take to change a lightbulb? - Two. One to screw it in, and one to stab the other in the back and take all of the credit.", type: .statement),
                Message(content: "What did Worf say when small ice asteroids began hitting the Enterprise hull? - Captain, we are being hailed.", type: .statement)
                ].randomElement()
        }
        
        
    }
    
    
    override func nextMessage() -> Message {
        return [
            Message(content: "I have been — and always shall be — your friend.", type: .statement),
            Message(content: "Beam me up, Scotty!", type: .statement),
            Message(content: "Out of the chair.", type: .statement),
            Message(content: "Space… the final frontier.", type: .statement),
            Message(content: "I changed the conditions of the test. I don’t like to lose.", type: .statement),
            Message(content: "I think it's time to try some unsafe velocities.", type: .statement),
            Message(content: "Red alert! All crew to battle stations!", type: .statement),
            Message(content: "I like this ship! You know, it's exciting!", type: .statement)
            ].randomElement()
    }
    
}
