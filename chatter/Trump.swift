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
			Message(content: "Make America great again!", type: .Statement),
			Message(content: "Make America great again!", type: .Statement),
			Message(content: "Make America great again!", type: .Statement),
			Message(content: "Make America great again!", type: .Statement),
			Message(content: "Make America great again!", type: .Statement),
			Message(content: "Make America great again!", type: .Statement),
			Message(content: "Make America great again!", type: .Statement),
			Message(content: "Is ObamaCare good?", type: .QuestionBool),
			Message(content: "I think we should build a wall against these Mexicans", type: .Statement),
			Message(content: "You think I will be a good president?", type: .QuestionBool),
			Message(content: "It's Designated PRESIDENT Trump from November on!!", type: .Statement),
			Message(content: "I've come to my senses I give up my candidacy", type: .Joke),
			Message(content: "You know a good joke?, I'll tell you one: our current president Barack HUSSEIN Obama!", type: .Joke),
			Message(content: "Vote for me!", type: .Statement)
			].randomElement()
	}
	
	override func responseForMessage(message: Message) -> Message {
		switch message.type {
		case .Statement:
			return [
				Message(content: "Only a democrat would say that!", type: .Statement),
				Message(content: "You're joking, right!", type: .Statement),
				Message(content: "GIve me your first-born son.", type: .Statement),
				Message(content: "No it's not a toupe!!!!!!!!!!!!!", type: .QuestionBool),
				Message(content: "That's YOUR point of view.", type: .Statement),
				Message(content: "even so, KKK votes are also legitimate votes.", type: .Statement),
				].randomElement()
		case .QuestionBool:
			return [
				Message(content: "only when Hillary wins this election", type: .Statement),
				Message(content: "Of course, I'm not lying to you!", type: .Statement),
				Message(content: "Don't do it. At least that's what the corporate people wil tell you.", type: .Statement),
				Message(content: "Naaaaaa!", type: .Statement)
				].randomElement()
		case .QuestionWhy:
			return [
				Message(content: "Because of this lyin' Ted", type: .Statement),
				Message(content: "Because I'm a business man", type: .Statement),
				Message(content: "Because I will make america great again.", type: .Statement)
				].randomElement()
		case .Joke:
			return [
				Message(content: "Joke's on you, once I am president", type: .QuestionBool),
				Message(content: "heh top kek", type: .Statement)
				].randomElement()
		}

	}
	
	
}
