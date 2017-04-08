//
//  ViewController.swift
//  chatter
//
//  Created by Nils Fischer on 30.04.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import UIKit


enum Side: CustomStringConvertible {
    case left, right
    
    var description: String {
        switch self {
        case .left: return "left"
        case .right: return "right"
        }
    }
    
    var nextSide: Side {
        switch self {
        case .left: return .right
        case .right: return .left
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
        
        self.leftChatterButton.imageView?.contentMode = .scaleAspectFit
        self.rightChatterButton.imageView?.contentMode = .scaleAspectFit

        self.chatterButtons = [ .left: self.leftChatterButton, .right: self.rightChatterButton ]
        
        self.configureButton(onSide: .left)
        self.configureButton(onSide: .right)
    }
    
    
    // MARK: View Configuration

    private func configureButton(onSide side: Side) {
        if let chatterButton: UIButton = self.chatterButtons[side] {
            if let chatter = chatters[side] {
                chatterButton.setTitle(chatter.image == nil ? chatter.name : nil, for: .normal)
                chatterButton.setImage(chatter.image, for: .normal)
            } else {
                chatterButton.setTitle("Select \(side) Chatter", for: .normal)
                chatterButton.setImage(nil, for: .normal)
            }
        }
    }
    
    private func reset() {
        self.chatViewController.reset()
        self.activeSide = .left
        self.lastMessage = nil
    }
    
    
    // MARK: User Interaction
    
    private var activeSide: Side = .left
    private var lastMessage: Message?
    
    @IBAction func chatButtonPressed(_ sender: AnyObject) {
        if let chatter = chatters[activeSide] {
            if let lastMessage = lastMessage {
                let response = chatter.responseForMessage(lastMessage)
                chatViewController.presentMessage(response, onSide: activeSide)
                self.lastMessage = nil
            }
            let message = chatter.nextMessage()
            chatViewController.presentMessage(message, onSide: activeSide)
            self.lastMessage = message
            activeSide = activeSide.nextSide
        } else {
            let alertController = UIAlertController(title: "Select a \(activeSide) Chatter", message: nil, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }

    @IBAction func selectChatterButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Enter a Chatter class name:", message: nil, preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "Chatter class name"
        }
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertController.addAction(UIAlertAction(title: "Set Chatter", style: .default, handler: { action in
            guard let chatterClassName = alertController.textFields?.first?.text else {
                return
            }
            if let chatter = (Bundle.main.classNamed("chatter." + chatterClassName) as? Chatter.Type)?.init() {
                let side: Side = sender === self.leftChatterButton ? .left : .right
                self.chatters[side] = chatter
                self.configureButton(onSide: side)
                self.reset()
            } else {
                let errorAlertController = UIAlertController(title: "Unable to load Class", message: "There is no class '\(chatterClassName)' or it's not a Chatter subclass.", preferredStyle: .alert)
                errorAlertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(errorAlertController, animated: true, completion: nil)
            }
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier, identifier == "embedChat" {
            self.chatViewController = segue.destination as! ChatViewController
        }
    }
    
}
