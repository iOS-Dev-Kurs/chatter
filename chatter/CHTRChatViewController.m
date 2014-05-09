//
//  CHTRChatViewController.m
//  chatter
//
//  Created by Nils Fischer on 09.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "CHTRChatViewController.h"

@interface CHTRChatBubble : NSObject

@property (nonatomic, strong) CHTRMessage *message;
@property (nonatomic) BOOL onLeft;

@end

@implementation CHTRChatBubble

@end


@interface CHTRChatBubbleCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *textBubbleLabel;

@end

@implementation CHTRChatBubbleCell

@end


@interface CHTRChatViewController ()

@property (strong, nonatomic) NSMutableArray *chatBubbles;

@property (strong, nonatomic) UIFont *bubbleTextFont;

@end

@implementation CHTRChatViewController

- (void)displayMessage:(CHTRMessage *)message onLeft:(BOOL)onLeft
{
    CHTRChatBubble *chatBubble = [[CHTRChatBubble alloc] init];
    chatBubble.message = message;
    chatBubble.onLeft = onLeft;
    [self.chatBubbles addObject:chatBubble];

    [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:[self.tableView numberOfRowsInSection:0] inSection:0]] withRowAnimation:UITableViewRowAnimationFade];
    [self scrollToBottomAnimated:YES];
}

- (void)reset {
    self.chatBubbles = nil;
    [self.tableView reloadData];
}

- (NSMutableArray *)chatBubbles
{
    if (!_chatBubbles) {
        _chatBubbles = [[NSMutableArray alloc] init];
    }
    return _chatBubbles;
}

- (UIFont *)bubbleTextFont {
    return [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
}

#pragma mark - Table View Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.chatBubbles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CHTRChatBubble *chatBubble = self.chatBubbles[indexPath.row];
    CHTRChatBubbleCell *cell = [tableView dequeueReusableCellWithIdentifier:(chatBubble.onLeft ? @"leftChatBubble" : @"rightChatBubble")];
    cell.textBubbleLabel.text = chatBubble.message.text;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CHTRChatBubble *chatBubble = self.chatBubbles[indexPath.row];
	NSString *text = chatBubble.message.text;
    
    // TODO: make more dynamic
	CGSize size = [text boundingRectWithSize:CGSizeMake(tableView.bounds.size.width - 50.0f - 20.0f, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.bubbleTextFont} context:nil].size;

    return size.height + 21.0f;
}

- (void)scrollToBottomAnimated:(BOOL)animated
{
    NSInteger bottomRow = [self tableView:self.tableView numberOfRowsInSection:0] - 1;
    if (bottomRow >= 0) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:bottomRow inSection:0];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:animated];
    }
}

@end
