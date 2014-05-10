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
@property (weak, nonatomic) CHTRChatter *chatter;

@property (strong, nonatomic) IBOutlet UIButton *leftChatterButton;
@property (strong, nonatomic) IBOutlet UIButton *rightChatterButton;
@property (weak, nonatomic) UIButton *pressedChatterButton;

- (IBAction)selectChatterButtonPressed:(id)sender;
- (IBAction)nextButtonPressed:(UIBarButtonItem *)sender;

@end


@implementation CHTRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.leftChatterButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.rightChatterButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self selectChatter:[[CHTRChatter alloc] init] onLeft:YES];
    [self selectChatter:[[CHTRChatter alloc] init] onLeft:NO];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"embedChat"]) {
        self.chatViewController = segue.destinationViewController;
    }
}

- (void)selectChatter:(CHTRChatter *)chatter onLeft:(BOOL)onLeft
{
    if (onLeft) {
        self.leftChatter = chatter;
    } else {
        self.rightChatter = chatter;
    }
    self.leftChatter.partner = self.rightChatter;
    
    UIButton *chatterButton = onLeft ? self.leftChatterButton : self.rightChatterButton;
    if (chatter.image) {
        [chatterButton setImage:chatter.image forState:UIControlStateNormal];
        [chatterButton setTitle:nil forState:UIControlStateNormal];
    } else {
        [chatterButton setImage:nil forState:UIControlStateNormal];
        [chatterButton setTitle:NSStringFromClass(chatter.class) forState:UIControlStateNormal];
    }
    
    self.chatter = self.leftChatter;
    [self.chatViewController reset];
}


#pragma mark - User Interaction

- (IBAction)selectChatterButtonPressed:(UIButton *)sender
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
    [self selectChatter:chatter onLeft:self.pressedChatterButton==self.leftChatterButton];
}

- (IBAction)nextButtonPressed:(UIBarButtonItem *)sender
{
    CHTRMessage *message = [self.chatter nextMessage];
    [self.chatViewController displayMessage:message onLeft:self.chatter==self.leftChatter];
    [self.chatViewController displayMessage:[self.chatter.partner responseForMessage:message] onLeft:self.chatter.partner==self.leftChatter];
    self.chatter = self.chatter.partner;
}


@end
