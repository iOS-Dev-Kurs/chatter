//
//  Sherlock.swift
//  chatter
//
//  Created by Richard Boell on 26.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Sherlock: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "sherlock"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "It is my business to know what other people don't know.", type: .statement),
            Message(content: "I am the last and highest court of appeal in detection.", type: .statement),
            Message(content: "The world is full of obvious things which nobody by any chance ever observes.", type: .statement),
            Message(content: "Is there any point to which you would wish to draw my attention?", type: .questionBool),
            Message(content: "I cannot live without brain-work. What else is there to live for?", type: .questionWhy),
            Message(content: "Which is it today? Morphine or cocaine?", type: .questionWhy),
            Message(content: "I never make exceptions.  An exception disproves the rule.", type: .statement),
            Message(content: "The game is afoot!", type: .statement),
            Message(content: "I'm not a psychopath, I'm a high-functioning sociopath. Do your research.", type: .statement)
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "Well spoken, my friend", type: .statement),
                Message(content: "And what can you deduce from that?", type: .questionWhy),
                Message(content: "I wont take the case.", type: .statement),
                Message(content: "I'm bored. Go on", type: .statement),
                Message(content: "Use your mind!", type: .statement),
                Message(content: "What is your suggestion?", type: .statement)
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "Quite so.", type: .statement),
                Message(content: "Not at all.", type: .statement),
                Message(content: "Precisely.", type: .statement),
                Message(content: "Oh I'm shure you'll find the right answer.", type: .statement),
                Message(content: "On the contrary!", type: .statement)
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "You can leave that question in my Hands.", type: .statement),
                Message(content: "Because It's my job to know.", type: .statement),
                Message(content: "That is quite a pretty little problem.", type: .statement)
                ].randomElement()
        case .joke:
            return [
                Message(content: "That is entertainment for underdeveloped spezies", type: .questionBool),
                Message(content: "I nearly had to laugh", type: .statement)
                ].randomElement()
        }
    }
    
    
}
