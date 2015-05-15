//
//  ChandlerBing.swift
//  chatter
//
//  Created by Kosiorek, Anna on 15.05.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import UIKit

class Chandler: Chatter {
    required init() {
        super.init(image: UIImage(named: "chandler"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "I just realized I can sleep with my eyes opened.", type: .Statement),
            Message(content: "Okey, I took the quiz. And it turns out I do put career before men.", type: .Statement),
            Message(content: "Seriously, good luck marrying me.", type: .Statement),
            Message(content: "You sure he'll crack that code?", type: .QuestionBool),
            Message(content: "I say more dumb things before 9 a.m. than most people say all day.", type: .Statement),
            Message(content: "Hi, I'm Chandler, I make jokes when I'm uncomfortable.", type: .Statement),
            Message(content: "Couldn't we just lose our virginities again?.", type: .QuestionBool),
            Message(content: "Until I was 25, I thought that the only response to 'I love you' was 'Oh, crap'.", type: .Statement),
            Message(content: "Was that place THE SUN?.", type: .QuestionBool),
            Message(content: "Can I interest you in a sarcastic comment?", type: .QuestionBool),
            Message(content: "Bagels and doughnuts. Round food for every mood.", type: .Statement),
            Message(content: "Pants. Like shorts, but longer.", type: .Statement),
            Message(content: "I'm funny, right? You only like knock-knock jokes.", type: .QuestionBool),
            Message(content: "Should I use my invisibility to fight crime, or for evil?", type: .QuestionBool)
        
        ].randomElement()
    
    }
    
    override func responseForMessage(message: Message) -> Message {
        return [
            Message(content: "It's Sunday. I don't move on Sundays.", type: .Statement),
            Message(content: "You know, I think I don't care.", type: .QuestionBool),
            Message(content: "I've had a very long, hard day.", type: .Statement),
            Message(content: "Tell him to e-mail me at www.hahaNotSoMuch.com", type: .Statement),
            Message(content: "Oh dear god.", type: .Statement),
            Message(content: "Well, maybe he was nervous.", type: .QuestionWhy),
            Message(content: "Ho-Ho-Ho-Holy crap.", type: .Statement)
            
        ].randomElement()
    }


}