//
//  AndroidUser.swift
//  chatter
//
//  Created by Fischer, Nils on 08.05.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import UIKit

class AndroidUser: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "android"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "My companies mission: Making the worlds information accessible to everyone and so on...", type: .Statement),
            Message(content: "Linux rocks.", type: .Statement),
            Message(content: "Please also use android, I am feeling lost!", type: .Statement),
            Message(content: "Am I too stupid for Mac?", type: .QuestionBool),
            Message(content: "Why dont you guys just use normal keys? ", type: .QuestionWhy),
            Message(content: "Why am I green?", type: .QuestionWhy),
            //Message(content: "Welcome to the party, pal.", type: .Statement),
            //Message(content: "Yippee-ki-yay, motherf***er.", type: .Statement)
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return [
            Message(content: "Because I'm a stupid android user.", type: .QuestionWhy),
            Message(content: "I dont get it, sorry.", type: .QuestionBool),
            Message(content: "No, never.", type: .QuestionBool),
            Message(content: "Cos iOS is to hard to navigate on.", type: .QuestionWhy),
            Message(content: "Yeah. That's what my Eric Schmidt keeps telling me.", type: .Statement),
            Message(content: "Someone give me some time to figure out iOS navigation.", type: .Joke)
            ].randomElement()
    }
    
    
}