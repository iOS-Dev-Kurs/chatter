//
//  Tyler.m
//  chatter
//
//  Created by Dominik Ludwig on 19.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Tyler.h"

@implementation Tyler
- (CHTRMessage *)nextMessage {
    return [@[[CHTRMessage messageWithText:@"The things you own end up owning you." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Listen up, maggots. You are not special. You are not a beautiful or unique snowflake. You're the same decaying organic matter as everything else." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Do you know what a duvet is?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"Well, what do you want me to do? You just want me to hit you?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"WHOA! WHOA! WHOA! Ok, you are now firing a gun at your 'imaginary friend' near 400 GALLONS OF NITROGLYCERINE!" type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"You know why they put oxygen masks on planes?" type:CHTRMessageTypeQuestionWhy],
              [CHTRMessage messageWithText:@"This is your pain. This is your burning hand. It's right here. Look at it." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Without pain, without sacrifice, we would have nothing. Like the first monkey shot into space." type:CHTRMessageTypeStatement],
              ] randomObject];
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message {
    switch (message.type) {
            
        case CHTRMessageTypeStatement:
        {
            return [CHTRMessage messageWithText:@"That's, um... That's interesting." type:CHTRMessageTypeQuestionBool];
            break;
        }
            
        case CHTRMessageTypeQuestionBool:
        {
            return [CHTRMessage messageWithText:@"Yeah, man." type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeQuestionWhy:
        {
            return [CHTRMessage messageWithText:@"Uh... I... I don't know" type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeJoke:
        {
            return [CHTRMessage messageWithText:@"Sticking feathers up your butt does not make you a chicken." type:CHTRMessageTypeStatement];
            break;
        }
            
        default:
            return [CHTRMessage messageWithText:@"Welcome to Fight Club. The first rule of Fight Club is: you do not talk about Fight Club." type:CHTRMessageTypeStatement];
    }
    
    
}

- (UIImage *)image {
    return [UIImage imageNamed:@"tyler"];
}


@end
