//
//  Homer.m
//  chatter
//
//  Created by Tobias Buck on 15.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Homer.h"

@implementation Homer

- (CHTRMessage *)nextMessage {
    return [@[[CHTRMessage messageWithText:@"If something goes wrong, blame the guy who can't speak English." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"It takes two to lie. One to lie and one to listen." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"To alcohol! The cause of and solution to all of life's problems!" type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Donuts. Is there anything they can't do?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"Kids, you tried your best and you failed miserably. The lesson is, never try." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Trying is the first step towards failure." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"I'm not normally a religious man, but if you're up there, save me, Superman!" type:CHTRMessageTypeJoke],
              [CHTRMessage messageWithText:@"I'm not a bad guy! I work hard, and I love my kids. So why should I spend half my Sunday hearing about how I'm going to Hell?" type:CHTRMessageTypeQuestionWhy],
              [CHTRMessage messageWithText:@"The answer to life's problems aren't at the bottom of a bottle, they're on TV!" type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Kill my boss? Do I dare live out the American dream?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"'To Start Press Any Key'. Where's the ANY key? " type:CHTRMessageTypeQuestionWhy]
              ] randomObject];
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message {
    switch (message.type) {
            
        case CHTRMessageTypeStatement:
        {
            return [CHTRMessage messageWithText:@"Oh, so they have internet on computers now!" type:CHTRMessageTypeQuestionBool];
            break;
        }
        
        case CHTRMessageTypeQuestionBool:
        {
            return [CHTRMessage messageWithText:@"Oh, people can come up with statistics to prove anything. 14% of people know that." type:CHTRMessageTypeStatement];
            break;
        }
        
        case CHTRMessageTypeQuestionWhy:
        {
            return [CHTRMessage messageWithText:@"Oh, people can come up with statistics to prove anything. 14% of people know that." type:CHTRMessageTypeStatement];
            break;
        }
        
        case CHTRMessageTypeJoke:
        {
            return [CHTRMessage messageWithText:@"That's it! You people have stood in my way long enough. I'm going to clown college!" type:CHTRMessageTypeStatement];
            break;
        }
            
        default:
            return [CHTRMessage messageWithText:@"Beer: The cause of, and solution to, all of life's problems. " type:CHTRMessageTypeStatement];
    }
    
            
}

- (UIImage *)image {
    return [UIImage imageNamed:@"homer"];
}

@end
