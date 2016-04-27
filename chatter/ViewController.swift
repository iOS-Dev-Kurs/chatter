//
//  ViewController.swift
//  chatter
//
//  Created by Nils Fischer on 30.04.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import UIKit


enum Side: CustomStringConvertible {
    case Left, Right
    
    var description: String {
        switch self {
        case .Left: return "left"
        case .Right: return "right"
        }
    }
    
    var nextSide: Side {
        switch self {
        case .Left: return .Right
        case .Right: return .Left
        }
    }
}


class ViewController: UIViewController {
    
    var chatters = [Side : Chatter]()
    
    private var chatViewController: ChatViewController!

    
    // MARK: Interface Elements
    
    @IBOutlet private weak var leftChatterButton: UIButton!
    @IBOutlet private weak var rightChatterButton: UIButton!
    private var chatterButtons: [Side : UIButton]!

    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.leftChatterButton.imageView?.contentMode = .ScaleAspectFit
        self.rightChatterButton.imageView?.contentMode = .ScaleAspectFit

        self.chatterButtons = [ .Left: self.leftChatterButton, .Right: self.rightChatterButton ]
        
        self.configureButtonOnSide(.Left)
        self.configureButtonOnSide(.Right)
    }
    
    
    // MARK: View Configuration

    private func configureButtonOnSide(side: Side) {
        if let chatterButton: UIButton = self.chatterButtons[side] {
            if let chatter = chatters[side] {
                chatterButton.setTitle(chatter.image == nil ? chatter.name : nil, forState: .Normal)
                chatterButton.setImage(chatter.image, forState: .Normal)
            } else {
                chatterButton.setTitle("Select \(side) Chatter", forState: .Normal)
                chatterButton.setImage(nil, forState: .Normal)
            }
        }
    }
    
    private func reset() {
        self.chatViewController.reset()
        self.activeSide = .Left
        self.lastMessage = nil
    }
    
    @IBOutlet weak var LabelForTopic: UILabel!
    private func setTopicToHead(newTopic: Topic) -> Void {
        if(newTopic != Topic.none) {
            LabelForTopic.text = "Topic: " + newTopic.description
        } else {
            LabelForTopic.text = ""
        }
    }
    
    // MARK: User Interaction
    
    private var activeSide: Side = .Left
    private var lastMessage: Message?
    
    private var isChangeAskedTopic = false
    private var TopicToChange = Topic.none
    
    @IBAction func chatButtonPressed(sender: AnyObject) {
        
        if let chatter = chatters[activeSide] {
            if let lastMessage = lastMessage {
                var response: Message
                // Implement Topic
                if(self.isChangeAskedTopic) {
                    let returnOfTopicChange = chatter.responseForTopicChange(self.TopicToChange)
                    if(returnOfTopicChange.boolChange) {
                        theCurrentTopic = self.TopicToChange
                        self.setTopicToHead(theCurrentTopic)
                        response = Message(content: chatter.sayYesToTopicChangeWith.randomElement(), type: .Statement)
                    } else {
                        response = Message(content: chatter.sayNoToTopicChangeWith.randomElement(), type: .Statement)
                    }
                    self.isChangeAskedTopic = false
                    self.TopicToChange = Topic.none
                }
                else {
                    response = chatter.responseForMessage(lastMessage)
                }
                chatViewController.presentMessage(response, onSide: activeSide)
                self.lastMessage = nil
                
            }
            var message = chatter.nextMessage()
            // Next Change Topic?
            if(message.type == Message.MessageType.changeTopic) {
                if let askedTopic = Topic(rawValue: message.description) {
                    message = Message(content: chatter.askForATopicChange.randomElement() + " " + askedTopic.description, type: .Statement)
                    self.isChangeAskedTopic = true
                    self.TopicToChange = askedTopic
                }
                
            }
            chatViewController.presentMessage(message, onSide: activeSide)
            self.lastMessage = message
            activeSide = activeSide.nextSide
        } else {
            let alertController = UIAlertController(title: "Select a \(activeSide) Chatter", message: nil, preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }

    @IBAction func selectChatterButtonPressed(sender: UIButton) {
        let alertController = UIAlertController(title: "Enter a Chatter class name:", message: nil, preferredStyle: .Alert)
        alertController.addTextFieldWithConfigurationHandler { textField in
            textField.placeholder = "Chatter class name"
        }
        alertController.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        alertController.addAction(UIAlertAction(title: "Set Chatter", style: .Default, handler: { action in
            guard let chatterClassName = alertController.textFields?.first?.text else {
                return
            }
            if let chatter = (NSBundle.mainBundle().classNamed("chatter." + chatterClassName) as? Chatter.Type)?.init() {
                let side: Side = sender === self.leftChatterButton ? .Left : .Right
                self.chatters[side] = chatter
                self.configureButtonOnSide(side)
                self.reset()
            } else {
                let errorAlertController = UIAlertController(title: "Unable to load Class", message: "There is no class '\(chatterClassName)' or it's not a Chatter subclass.", preferredStyle: .Alert)
                errorAlertController.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
                self.presentViewController(errorAlertController, animated: true, completion: nil)
            }
        }))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier where identifier == "embedChat" {
            self.chatViewController = segue.destinationViewController as! ChatViewController
        }
    }
    
}
