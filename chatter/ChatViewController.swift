//
//  ChatViewController.swift
//  chatter
//
//  Created by Nils Fischer on 30.04.15.
//  Copyright (c) 2015 Universität Heidelberg. All rights reserved.
//

import UIKit


struct ChatBubble {
    
    let message: Message
    let side: Side
    
}


class ChatViewController: UITableViewController {

    var chatBubbles = [ChatBubble]()
    
    
    // MARK: Public Interface
    
    func presentMessage(message: Message, onSide side: Side) {
        self.chatBubbles.append(ChatBubble(message: message, side: side))
        self.tableView.beginUpdates()
        self.tableView.insertRowsAtIndexPaths([ NSIndexPath(forRow: self.tableView.numberOfRowsInSection(0), inSection: 0) ], withRowAnimation: .Fade)
        self.tableView.endUpdates()
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1000), dispatch_get_main_queue()) { () -> Void in
            self.scrollToBottom(animated: true)
        }
    }

    func reset() {
        self.chatBubbles = []
        self.tableView.reloadData()
    }
    
    
    // MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.tableView.estimatedRowHeight = 44
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    
    // MARK: Table View Datasource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatBubbles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let chatBubble = chatBubbles[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier(chatBubble.side == .Left ? "leftChatBubble" : "rightChatBubble", forIndexPath: indexPath) as! ChatBubbleCell
        cell.textView.text = chatBubble.message.content
        return cell
    }
/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
CHTRChatBubble *chatBubble = self.chatBubbles[indexPath.row];
NSString *text = chatBubble.message.text;

// TODO: make more dynamic
CGSize size = [text boundingRectWithSize:CGSizeMake(tableView.bounds.size.width - 70.0f - 20.0f, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.bubbleTextFont} context:nil].size;
return size.height + 20.0f;
}
*/

    // MARK: View Configuration
    
    func scrollToBottom(animated: Bool = true) {
        let bottomRow = self.tableView.numberOfRowsInSection(0) - 1
        if bottomRow >= 0 {
            self.tableView.scrollToRowAtIndexPath(NSIndexPath(forRow: bottomRow, inSection: 0), atScrollPosition: .Bottom, animated: animated)
        }
    }

}
