//
//  Vincent.m
//  chatter
//
//  Created by Chelaru, Valentin on 16.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Vincent.h"

@implementation Vincent

- (CHTRMessage *)nextMessage {
    return [@[[CHTRMessage messageWithText:@"Fuck you." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"You ever seen that show Cops? I was watching it one time and there was this cop on, and he was talking about this gun fight he had in the hallway with this guy, right and he just unloaded on this guy and nothing happened, he didn't hit nothing. Okay it was just him and this guy. I mean you know, it's freaky but it happens." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"The fuck does that mean?" type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Would you give a guy a foot massage?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"Have you ever given a foot massage?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"Now, look, I've given a million ladies a million foot massages, and they all meant something. We act like they don't, but they do, and that's what's so fucking cool about them. There's a sensuous thing going on where you don't talk about it, but you know it, she knows it, fucking Marsellus knew it, and Antoine should have fucking better known better. I mean, that's his fucking wife, man. He ain't gonna have no sense of humor about that shit. You know what I'm saying?" type:CHTRMessageTypeQuestionBool]
              ] randomObject];
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message {
    switch (message.type) {
            
        case CHTRMessageTypeStatement:
        {
            return [CHTRMessage messageWithText:@"The fuck does that mean?" type:CHTRMessageTypeQuestionBool];
            break;
        }
            
        case CHTRMessageTypeQuestionBool:
        {
            return [CHTRMessage messageWithText:@"Fuck you." type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeQuestionWhy:
        {
            return [CHTRMessage messageWithText:@"I ain't saying it's right." type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeJoke:
        {
            return [CHTRMessage messageWithText:@"I don't believe it man!" type:CHTRMessageTypeStatement];
            break;
        }
            
        default:
            return [CHTRMessage messageWithText:@"God damn it Jules..." type:CHTRMessageTypeStatement];
    }
    
    
}

- (UIImage *)image {
    return [UIImage imageNamed:@"vincent"];
}

@end
