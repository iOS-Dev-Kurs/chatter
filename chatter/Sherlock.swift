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
            Message(content: "It is my business to know what other people don't know.", type: .Statement),
            Message(content: "I am the last and highest court of appeal in detection.", type: .Statement),
            Message(content: "The world is full of obvious things which nobody by any chance ever observes.", type: .Statement),
            Message(content: "Is there any point to which you would wish to draw my attention?", type: .QuestionBool),
            Message(content: "I cannot live without brain-work. What else is there to live for?", type: .QuestionWhy),
            Message(content: "Which is it today? Morphine or cocaine?", type: .QuestionWhy),
            Message(content: "I never make exceptions.  An exception disproves the rule.", type: .Statement),
            Message(content: "The game is afoot!", type: .Statement),
            Message(content: "I'm not a psychopath, I'm a high-functioning sociopath. Do your research.", type: .Statement)
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        case .Statement:
            return [
                Message(content: "Well spoken, my friend", type: .Statement),
                Message(content: "And what can you deduce from that?", type: .QuestionWhy),
                Message(content: "I wont take the case.", type: .Statement),
                Message(content: "I'm bored. Go on", type: .Statement),
                Message(content: "Use your mind!", type: .Statement),
                Message(content: "What is your suggestion?", type: .Statement)
                ].randomElement()
        case .QuestionBool:
            return [
                Message(content: "Quite so.", type: .Statement),
                Message(content: "Not at all.", type: .Statement),
                Message(content: "Precisely.", type: .Statement),
                Message(content: "Oh I'm shure you'll find the right answer.", type: .Statement),
                Message(content: "On the contrary!", type: .Statement)
                ].randomElement()
        case .QuestionWhy:
            return [
                Message(content: "You can leave that question in my Hands.", type: .Statement),
                Message(content: "Because It's my job to know.", type: .Statement),
                Message(content: "That is quite a pretty little problem.", type: .Statement)
                ].randomElement()
        case .Joke:
            return [
                Message(content: "That is entertainment for underdeveloped spezies", type: .QuestionBool),
                Message(content: "I nearly had to laugh", type: .Statement)
                ].randomElement()
        }
    }
    
    
}
