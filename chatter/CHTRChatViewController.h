//
//  CHTRChatViewController.h
//  chatter
//
//  Created by Nils Fischer on 09.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

@import UIKit;
@import Foundation;

#import "CHTRMessage.h"

@interface CHTRChatViewController : UITableViewController

- (void)displayMessage:(CHTRMessage *)message onLeft:(BOOL)onLeft;
- (void)reset;

@end
