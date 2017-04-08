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
    
    func presentMessage(_ message: Message, onSide side: Side) {
        self.chatBubbles.append(ChatBubble(message: message, side: side))
        self.tableView.beginUpdates()
        self.tableView.insertRows(at: [ IndexPath(row: self.tableView.numberOfRows(inSection: 0), section: 0) ], with: .fade)
        self.tableView.endUpdates()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(1000) / Double(NSEC_PER_SEC)) { () -> Void in
            self.scrollToBottom(true)
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
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatBubbles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatBubble = chatBubbles[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: chatBubble.side == .left ? "leftChatBubble" : "rightChatBubble", for: indexPath) as! ChatBubbleCell
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
    
    func scrollToBottom(_ animated: Bool = true) {
        let bottomRow = self.tableView.numberOfRows(inSection: 0) - 1
        if bottomRow >= 0 {
            self.tableView.scrollToRow(at: IndexPath(row: bottomRow, section: 0), at: .bottom, animated: animated)
        }
    }

}
