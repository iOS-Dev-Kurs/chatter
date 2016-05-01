//
//  angryFarmer.swift
//  chatter
//
//  Created by Arthur Heimbrecht on 1.5.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//
import UIKit

class Redneck: Chatter {
	
	required init() {
		super.init(image: UIImage(named: "redneck"))
	}
	
	var counter = 0
	
	override func nextMessage() -> Message {
		switch counter {
			case 0: return Message(content: "They took our jobs!", type: .Statement)
			case 1: return Message(content: "They took our jobs!!!!!!!", type: .Statement)
			case 2: return Message(content: "They tuk r jaaaaabs!!!!!", type: .Statement)
			case 3: return Message(content: "Te-tukr jeeeeeeeerbs!!!!!", type: .Statement)
			case 4...100: return Message(content: "Te-tkr-geeeeeeeerbs!!!!!", type: .Statement)
		default: return Message(content: "They took our jobs.", type: .Statement)
		}
	}
	
		override func responseForMessage(message: Message) -> Message {
			if (message.content == "Make America great again!") {
				counter=0
				return Message(content: "All hail Donald Trump, he'll get them.", type: .Statement)
			}
			if (message.type == .Statement) {
				counter+=1
				return [
					Message(content: "Ah tell ya' boy!!!", type: .Statement),
					Message(content: "Whut", type: .QuestionWhy),
					Message(content: "Thanks Obama!!", type: .Statement),
				].randomElement()
			}
			if (message.type == .Joke) {
				counter+=2
				return Message(content: "You think this' funny?!! Ah tell ya what ain't funny:", type: .Statement)
			}
			return Message(content: "No, cause…", type: .Statement)
		}
	
}
