//
//  IronMan.swift
//  chatter
//
//  Created by Elvira  Beisel on 11.04.17.
//  Copyright © 2017 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class IronMan : Chatter{
    
    required init() {
        super.init(image: UIImage(named: "Iron Man"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "How'd you solve the icing problem?", type: .questionBool),
            Message(content: "It's your birthday?", type: .questionBool),
            Message(content: "What is the point of owning a race car if you can't drive it?", type: .questionBool),
            Message(content: "What are you trying to get rid of me for? You got plans?", type: .questionBool),
            Message(content: "Give me a scotch. I'm starving", type: .statement),
            
            
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "I don't like it when you have plans.", type: .statement),
                Message(content: "Give me a scotch. I'm starving.", type: .statement),
                Message(content: "Iron Man. That's kind of catchy. It's got a nice ring to it.", type: .statement),
                Message(content: "Yeah...okay.", type: .statement),
                Message(content: "I'm a huge fan of the way you lose control and turn into an enourmous green rage monster.", type: .statement),
                Message(content: "Yeah? And?", type: .questionBool),
                Message(content: "👍", type: .statement)
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "Let's face it, this is not the worst thing you've caught me doing.", type: .statement),
                Message(content: "I knew that.", type: .statement),
                Message(content: "I already told you, I don't want to join your super secret boy band.", type: .statement),
                Message(content: "You know, it's times like these when I realize what a superhero I am.", type: .statement),
                Message(content: "Might wanna look into it!", type: .statement),
                Message(content: "Yeah, I can fly!", type: .statement),
                Message(content: "It's totally cool if you take a picture with me. Don't put this on MySpace. Please, no gang signs. Just kidding, you can put it up", type: .statement)
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "I am Iron Man.", type: .statement),
                Message(content: "Why not?", type: .statement),
                Message(content: "Who knows?!", type: .statement),
                Message(content: "Look, stop telling me. Just leave it on the screen.", type: .statement),
                Message(content: "Look at me, I'm flying!", type: .statement),
                ].randomElement()
            
        case .joke:
            return [
                Message(content: "Yeah well vacation's over.", type: .questionBool),
                Message(content: "Hihihi", type: .statement),
                Message(content: "Good one 😉", type: .statement),
                Message(content: "😀😀", type: .statement)
                ].randomElement()
        }
    }
    
}
