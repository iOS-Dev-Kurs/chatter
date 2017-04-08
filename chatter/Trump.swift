//
//  Trump.swift
//  chatter
//
//  Created by Arthur Heimbrecht on 1.5.16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import UIKit

class Trump: Chatter {
	
	required init() {
		super.init(image: UIImage(named: "trump"))
	}
	
	override func nextMessage() -> Message {
		return [
			Message(content: "Make America great again!", type: .statement),
			Message(content: "Make America great again!", type: .statement),
			Message(content: "Make America great again!", type: .statement),
			Message(content: "Make America great again!", type: .statement),
			Message(content: "Make America great again!", type: .statement),
			Message(content: "Make America great again!", type: .statement),
			Message(content: "Make America great again!", type: .statement),
			Message(content: "Is ObamaCare good?", type: .questionBool),
			Message(content: "I think we should build a wall against these Mexicans", type: .statement),
			Message(content: "You think I will be a good president?", type: .questionBool),
			Message(content: "It's Designated PRESIDENT Trump from November on!!", type: .statement),
			Message(content: "I've come to my senses I give up my candidacy", type: .joke),
			Message(content: "You know a good joke?, I'll tell you one: our current president Barack HUSSEIN Obama!", type: .joke),
			Message(content: "Vote for me!", type: .statement)
			].randomElement()
	}
	
	override func responseForMessage(_ message: Message) -> Message {
		switch message.type {
		case .statement:
			return [
				Message(content: "Only a democrat would say that!", type: .statement),
				Message(content: "You're joking, right!", type: .statement),
				Message(content: "GIve me your first-born son.", type: .statement),
				Message(content: "No it's not a toupe!!!!!!!!!!!!!", type: .questionBool),
				Message(content: "That's YOUR point of view.", type: .statement),
				Message(content: "even so, KKK votes are also legitimate votes.", type: .statement),
				].randomElement()
		case .questionBool:
			return [
				Message(content: "only when Hillary wins this election", type: .statement),
				Message(content: "Of course, I'm not lying to you!", type: .statement),
				Message(content: "Don't do it. At least that's what the corporate people wil tell you.", type: .statement),
				Message(content: "Naaaaaa!", type: .statement)
				].randomElement()
		case .questionWhy:
			return [
				Message(content: "Because of this lyin' Ted", type: .statement),
				Message(content: "Because I'm a business man", type: .statement),
				Message(content: "Because I will make america great again.", type: .statement)
				].randomElement()
		case .joke:
			return [
				Message(content: "Joke's on you, once I am president", type: .questionBool),
				Message(content: "heh top kek", type: .statement)
				].randomElement()
		}

	}
	
	
}
