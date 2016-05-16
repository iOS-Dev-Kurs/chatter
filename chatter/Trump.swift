//
//  Trump.swift
//  chatter
//
//  Created by Lucas Moeller on 28.04.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Trump: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "trump"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "China has done the biggest theft in the history of the world. They have taken our money and our jobs.", type: .Statement),
            Message(content: "What I think you wanna do is boykott apple until such time they give that security number. Do you like that?", type: .QuestionBool),
            Message(content: "I have a great relationship with Mexicans. I love their attitude.", type: .Joke),
            Message(content: "This is really my hair!", type: .Joke),
            Message(content: "If Obama resigns from office now I will give him free lifetime golf at any of my courses!", type: .Statement),
            Message(content: "What I think you wanna do is boykott apple until such time they give that security number. Do you like that?", type: .QuestionBool),
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
        
        case .Statement:
            return [
                Message(content: "WALL", type: .Statement),
                Message(content: "WOW I look fantastic!", type: .Statement),
                Message(content: "I'll talk to you after I combed my hair.", type: .Statement),
                Message(content: "It's gonna be HUGE!", type: .Statement),
            ].randomElement();
            
        case .QuestionBool:
            return [
                Message(content: "No. Wall!", type: .Statement),
                Message(content: "Yes, I think I do a really good job. I think I protect this country.", type: .Statement),
                ].randomElement()
            
        case .QuestionWhy:
            return [
                Message(content: "Look I'm REALLY rich. I'm just gonna do it", type: .Statement),
                Message(content: "It must be such an honor for you to ask me this question, ain't it?", type: .QuestionBool),
            ].randomElement()
            
        case .Joke:
            return [
                Message(content: "Part of the beauty of me is that I'm really rich.", type: .Statement),
            ].randomElement()
        }
    }
}
