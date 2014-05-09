//
//  CHTRPerson.m
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "CHTRChatter.h"

@implementation CHTRChatter

- (CHTRMessage *)nextMessage;
{
    // create a random next message
    
    // note: there are many ways to pick a random object from an array, see responseForMessage: comments.
    
    NSUInteger r = arc4random_uniform(8);
    
    CHTRMessage *message = [[CHTRMessage alloc] init];

    switch (r) {
            
        case 0:
            message.text = @"Hello World! How good to be alive :)";
            message.type = CHTRMessageTypeStatement;
            break;
            
        case 1:
            message.text = @"Say, do you like butterflies?";
            message.type = CHTRMessageTypeQuestionBool;
            break;
            
        case 2:
            message.text = @"What did YOU think of the last Harry Potter movie?";
            message.type = CHTRMessageTypeQuestionOpinion;
            break;
            
        case 3:
            message.text = @"Why THE HELL are you saying that?";
            message.type = CHTRMessageTypeQuestionWhy;
            break;
            
        case 4:
            message.text = @"Two photons go into a bar.. argh I forget the rest <.<";
            message.type = CHTRMessageTypeJoke;
            break;
            
        case 5:
            message.text = @"I like to move it, move it.";
            message.type = CHTRMessageTypeStatement;
            break;
            
        case 6:
            message.text = @"This is weird.";
            message.type = CHTRMessageTypeStatement;
            break;
            
        case 7:
            message.text = @"I alway thought, the lemon is an underrated fruit. Care to weigh in?";
            message.type = CHTRMessageTypeQuestionOpinion;
            break;
            
        default:
            break;
    }
    
    return message;
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message
{
    CHTRMessage *response = [[CHTRMessage alloc] init];

    switch (message.type) {
        
        case CHTRMessageTypeStatement: {
            // there are a lot of ways to choose a random message
            // you can choose a random number and do a switch:
            NSUInteger r = arc4random_uniform(4);
            switch (r) {
                case 0:
                    response.text = @"You said it, not me..";
                    break;
                case 1:
                    response.text = @"Absolutely!";
                    break;
                case 2:
                    response.text = @"That's just weird.";
                    break;
                case 3:
                    response.text = @"Oh, really?!";
                    break;
                default:
                    break;
            }
            break;
        }
            
        case CHTRMessageTypeQuestionBool:
            // or use the instance method randomObject I added to NSArray:
            response.text = [@[@"Of course not!", @"Yeah, I think so."] randomObject];
            break;
            
        case CHTRMessageTypeQuestionWhy:
            // you can also use the class method I added to CHTRMessage to quickly create an array of messages and directly return a random object from this array
            return [@[[CHTRMessage messageWithText:@"Just because I can!" type:CHTRMessageTypeStatement],
                      [CHTRMessage messageWithText:@"Because that's the way it is." type:CHTRMessageTypeStatement],
                      [CHTRMessage messageWithText:@"Who knows?!" type:CHTRMessageTypeStatement]
                      ] randomObject];

        case CHTRMessageTypeQuestionOpinion:
            response.text = @"Hmm I am not quite sure but it IS an interesting question..";
            break;
            
        case CHTRMessageTypeJoke:
            // just pick what you like ;) i like this:
            return [@[[CHTRMessage messageWithText:@"Is that supposed to be funny?!" type:CHTRMessageTypeStatement],
                      [CHTRMessage messageWithText:@"HAHAH, you are killing me :D" type:CHTRMessageTypeStatement],
                      [CHTRMessage messageWithText:@"rofl :D:D" type:CHTRMessageTypeStatement]
                      ] randomObject];
            break;
            
        default:
            response.text = @"I am speechless.";
            break;
    }
    
    return response;
}

- (void)setPartner:(CHTRChatter *)partner {
    if (self.partner==partner) return;
    _partner = partner;
    partner.partner = self;
}

@end
