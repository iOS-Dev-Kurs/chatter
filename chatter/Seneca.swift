//
//  Seneca.swift
//  chatter
//
//  Created by Felix Meissner on 5/1/16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Seneca: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "seneca"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "He who commits to virtue reveals his noble origin", type: .Statement),
            Message(content: "This has been endowed to us so we have to face it courageously", type: .Statement),
            Message(content: "What does one need from the external world when having collected it within yourself?", type: .Statement),
            Message(content: "Well then? So being virtuous will suffice for a happy life?", type: .QuestionBool),
            Message(content: "It's a grave mistake to think giving away is an easy thing to do", type: .Statement),
            Message(content: "Go ahead! Let go off your anger, have a sharp tongue and bite! It is yet far more likely to crack your teeth than to get anywhere", type: .Statement),
            Message(content: "Having noticed that, I do not feel offended rather more I compare it to a child crying in misery", type: .Statement)
            ].randomElement()
    }
    
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
            
        case .Statement:
            return [
                Message(content: "What did that have anything to do with what I said?", type: .QuestionWhy),
                Message(content: "You, sir, are a weird person", type: .Statement),
                Message(content: "One day, Humans will land on Mars.", type: .Statement),
                Message(content: "I like your personality", type: .Statement),
                ].randomElement();
            
        case .QuestionBool:
            return [
                Message(content: "This will certainly never be the case", type: .Statement),
                Message(content: "Why should you want to know this?", type: .QuestionWhy),
                Message(content: "Foolishness!", type: .QuestionWhy),
                Message(content: "I will have to comtemplate deeply over this issue", type: .Statement)
                ].randomElement();
            
        case .QuestionWhy:
            return [
                
                Message(content: "There are good reasons for this", type: .Statement),
                Message(content: "Ask that yourself", type: .Statement),
                Message(content: "You won't get an answer out of me about that.", type: .Statement),
                Message(content: "What do you mean by that?", type: .QuestionWhy),
                Message(content: "Next one please! I am awaiting questions worthwile answering.", type: .Joke),
                ].randomElement();
            
        case .Joke:
            return [
                Message(content: "This only betrays your foolishness, so it's none of my business.", type: .Statement),
                Message(content: "I don't care about it considering myself, rather I am concerned about you.", type: .Statement),
                Message(content: "It's good to see your soul endorsing in some amusement.", type: .Statement),
                Message(content: "Why are you joking in the face of utmost adversity?", type: .QuestionWhy),
                Message(content: "What you can laugh about, you can call your property.", type: .Statement)
                ].randomElement()
        }
    }
    
    
}