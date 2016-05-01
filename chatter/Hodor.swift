//
//  Hodor.swift
//  chatter
//
//  Created by Arthur Heimbrecht on 26.4.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Hodor: Chatter {
	
	required init() {
		super.init(image: nil)
	}
	
	override func nextMessage() -> Message {
		return [
			Message(content: "Hodor.", type: .Statement),
			Message(content: "Hodor?", type: .QuestionBool),
			Message(content: "Hodor!", type: .Statement),
			].randomElement()
	}
	
	override func responseForMessage(message: Message) -> Message {
		return Message(content: "", type: .Statement)
	}
	
}
