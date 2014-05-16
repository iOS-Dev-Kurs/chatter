//
//  Vader.m
//  chatter
//
//  Created by Philipp on 16.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Vader.h"

@implementation Vader

- (CHTRMessage *)nextMessage {
    return [@[[CHTRMessage messageWithText:@"You have controlled your fear. Now, release your anger. Only your hatred can destroy me. " type:CHTRMessageTypeStatement],
              
              [CHTRMessage messageWithText:@"You have only begun to discover your power. Join me, and I will complete your training. With our combined strength, we can end this destructive conflict and bring order to the galaxy. " type:CHTRMessageTypeStatement],
              
              
              [CHTRMessage messageWithText:@"So, you have accepted the truth?" type:CHTRMessageTypeQuestionBool],
              
              
              [CHTRMessage messageWithText:@"Don't be too proud of this technological terror you've constructed. The ability to destroy a planet is insignificant next to the power of the Force." type:CHTRMessageTypeJoke],
              
              
              [CHTRMessage messageWithText:@"'What is thy bidding, my master? " type:CHTRMessageTypeQuestionWhy]
              ] randomObject];
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message {
    switch (message.type) {
            
        case CHTRMessageTypeStatement:
        {
            return [CHTRMessage messageWithText:@"I find your lack of faith disturbing. " type:CHTRMessageTypeQuestionBool];
            break;
        }
            
        case CHTRMessageTypeQuestionBool:
        {
            return [CHTRMessage messageWithText:@"Nooooooooooooooooooo!" type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeQuestionWhy:
        {
            return [CHTRMessage messageWithText:@"As you wish." type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeJoke:
        {
            return [CHTRMessage messageWithText:@"All too easy." type:CHTRMessageTypeStatement];
            break;
        }
            
        default:
            return [CHTRMessage messageWithText:@"Don't fail me again!" type:CHTRMessageTypeStatement];
    }
    
    
}
- (UIImage *)image {
    return [UIImage imageNamed:nil];
}

@end
