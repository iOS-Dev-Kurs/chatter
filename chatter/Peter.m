//
//  Peter.m
//  chatter
//
//  Created by Lukas Gerritzen on 17.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Peter.h"

@implementation Peter

- (CHTRMessage *)nextMessage {
    return [@[[CHTRMessage messageWithText:@"Hehehehehehehehe" type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"You know, sometimes I feel like the whole world was made just for me..." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"I'm not drunk, I'm just exhausted because I've been up all night drinking." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Do you like pancakes?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"You know what really grinds my gears?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"hehehehe" type:CHTRMessageTypeHehehe],
              [CHTRMessage messageWithText:@"Why did all the dinosaurs die out?" type:CHTRMessageTypeQuestionWhy],
              [CHTRMessage messageWithText:@"Excuse me, is your refrigerator running? Because if it is, it probably runs like you, very homosexually." type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"Why do women have boobs?" type:CHTRMessageTypeQuestionWhy],
              [CHTRMessage messageWithText:@"For more about flatulence, you can visit my ass!\n[Peter Farts]" type:CHTRMessageTypeJoke],
              [CHTRMessage messageWithText:@"How many dirty stinkin' apes does it take to screw in a lightbulb? Three: One dirty stinkin' ape to screw in the light bulb, and two dirty stinkin' apes to throw faeces at each other. Hehehehehehe." type:CHTRMessageTypeJoke],
              ] randomObject];
}


- (CHTRMessage *)responseForMessage:(CHTRMessage *)message
{
    switch (message.type) {
            
        case CHTRMessageTypeStatement:
            return [ @[ [CHTRMessage messageWithText:@"That's what my ancestor King-Of-Denmark Griffin used to say!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Woah, woah, woah, woah, woah, woah, woah, woah, woah, woah, woah, woah..." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Do you sometimes feel like talking to an idiot, too?" type:CHTRMessageTypeQuestionBool],
                        ] randomObject];

            
        case CHTRMessageTypeQuestionBool:
            return [ @[ [CHTRMessage messageWithText:@"Yes, no and screw it!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"You make my brain hurt!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Yeah of course!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Oh god, no. What's wrong with you?" type:CHTRMessageTypeStatement],
                        ] randomObject];
            
        case CHTRMessageTypeQuestionWhy:
            return [ @[ [CHTRMessage messageWithText:@"Oh I don't know" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Probably because I can recite all 50 states in a quarter of a second." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Because you touch yourself at night." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Why do you ask me these questions?" type:CHTRMessageTypeQuestionWhy],
                        ] randomObject];
            
        case CHTRMessageTypeJoke:
            return [ @[ [CHTRMessage messageWithText:@"Hehehehe— oh... You made me pee myself." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"I don't get it." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"hehehehehehehe" type:CHTRMessageTypeHehehe]
                        ] randomObject];

        case CHTRMessageTypeHehehe:
            return [CHTRMessage messageWithText:@"hehehehehehehehehehe" type:CHTRMessageTypeHehehe];
            
        default:
            return [CHTRMessage messageWithText:@"I don't understand." type:CHTRMessageTypeStatement];
    }
}


- (UIImage *)image {
    return [UIImage imageNamed:@"peter"];
}


@end
