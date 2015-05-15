//
//  HankHill.swift
//  chatter
//
//  Created by Hans Hofner on 15.05.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import UIKit

class Hank: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "hankhill"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "God damn it Bobby", type: .Statement),
            Message(content: "The only woman I'm pimping is sweet lady propane! And I'm tricking her out all over this town.", type: .Statement),
            Message(content: "God, I'm too high to drive. That's a side effect of the marijuana poisining.", type: .Statement),
            Message(content: "Why would anyone do drugs when they could just mow a lawn?", type: .QuestionBool),
            Message(content: "Bobby, vegetarians can't be trusted", type: .Statement),
            Message(content: "I wasn’t flirting with her! I didn’t even mention that I worked in propane.", type: .Statement),
            Message(content: "I can’t enjoy a party until I know where the bathroom is. You knew that when you married me.”", type: .Statement),
            Message(content: "Bobby, if you weren’t my son, I’d hug you.", type: .Statement)
            ].randomElement()
    }
    
    override func responseForMessage(message: Message) -> Message {
        return Message(content: "Yep...", type: .Statement)
    }
    
}
