//
//  CHTRViewController.m
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "CHTRViewController.h"
#import "CHTRChatViewController.h"
#import "CHTRChatter.h"

@interface CHTRViewController ()

@property (strong, nonatomic) CHTRChatViewController *chatViewController;

@property (strong, nonatomic) CHTRChatter *leftChatter;
@property (strong, nonatomic) CHTRChatter *rightChatter;

@property (strong, nonatomic) CHTRChatter *chatter;

@property (strong, nonatomic) IBOutlet UIButton *leftChatterButton;
@property (strong, nonatomic) IBOutlet UIButton *rightChatterButton;
@property (weak, nonatomic) UIButton *pressedChatterButton;

- (IBAction)setChatterButtonPressed:(id)sender;
- (IBAction)nextButtonPressed:(UIBarButtonItem *)sender;

@end

@implementation CHTRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.leftChatter = [[CHTRChatter alloc] init];
    self.rightChatter = [[CHTRChatter alloc] init];
    self.leftChatter.partner = self.rightChatter;
    self.chatter = self.leftChatter;

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"embedChat"]) {
        self.chatViewController = segue.destinationViewController;
    }
}

- (IBAction)setChatterButtonPressed:(UIButton *)sender
{
    self.pressedChatterButton = sender;
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Enter a Chatter Class Name" message:nil delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Set Chatter", nil];
    alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==alertView.cancelButtonIndex) return;
    
    Class chatterClass = [[NSBundle mainBundle] classNamed:[alertView textFieldAtIndex:0].text];
    if (!chatterClass) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Unable to load Class" message:@"This Chatter class does not exist." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        return;
    }
    
    CHTRChatter *chatter = [[chatterClass alloc] init];
    if (self.pressedChatterButton==self.leftChatterButton) {
        self.leftChatter = chatter;
    } else if (self.pressedChatterButton==self.rightChatterButton) {
        self.rightChatter = chatter;
    } else {
        return;
    }
    self.leftChatter.partner = self.rightChatter;
    
    if (chatter.image) {
        [self.pressedChatterButton setBackgroundImage:chatter.image forState:UIControlStateNormal];
        [self.pressedChatterButton setTitle:nil forState:UIControlStateNormal];
    } else {
        [self.pressedChatterButton setBackgroundImage:nil forState:UIControlStateNormal];
        [self.pressedChatterButton setTitle:NSStringFromClass(chatterClass) forState:UIControlStateNormal];
    }

    self.chatter = self.leftChatter;
    [self.chatViewController reset];

}

- (IBAction)nextButtonPressed:(UIBarButtonItem *)sender
{
    CHTRMessage *message = [self.chatter nextMessage];
    [self.chatViewController displayMessage:message onLeft:self.chatter==self.leftChatter];
    [self.chatViewController displayMessage:[self.chatter.partner responseForMessage:message] onLeft:self.chatter.partner==self.leftChatter];
    self.chatter = self.chatter.partner;
}

@end
