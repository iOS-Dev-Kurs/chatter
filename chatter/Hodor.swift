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
			Message(content: "Hodor.", type: .statement),
			Message(content: "Hodor?", type: .questionBool),
			Message(content: "Hodor!", type: .statement),
			].randomElement()
	}
	
	override func responseForMessage(_ message: Message) -> Message {
		return Message(content: "", type: .statement)
	}
	
}
