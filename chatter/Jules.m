//
//  Jules.m
//  chatter
//
//  Created by Klinge, Thomas on 16.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Jules.h"

@implementation Jules

- (CHTRMessage *)nextMessage {
    return [@[[CHTRMessage messageWithText:@"Hamburgers! The cornerstone of any nutritious breakfast." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Say \"what\" again! Say! \"what\"! again! I dare you! I double-dare you, motherfucker! Say \"what\" one more goddamn time!" type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Well, there's this passage I've got memorized, sorta fits the occasion. Ezekiel 25:17? \"The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who in the name of charity and good will shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. [begins pacing about the room] And I will strike down upon thee with great vengeance and furious anger those who attempt to poison and destroy my brothers. And you will know my name is the Lord when I lay my vengeance upon thee.\"" type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"\"What\" ain't no country I ever heard of! They speak English in \"What\"?!" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"English, motherfucker! Do you speak it?!" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"I mean that's it for me, from here on in you consider my ass retired." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"\"Royale with cheese.\" Know why they call it that?" type:CHTRMessageTypeQuestionWhy],
              [CHTRMessage messageWithText:@"Hey look, I did not hit no motherfucking bump." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Don't be telling me about foot massages, I'm the foot fuckin' master." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Hey look, I did not hit no motherfucking bump." type:CHTRMessageTypeStatement]
              ] randomObject];
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message {
    switch (message.type) {
            
        case CHTRMessageTypeStatement:
        {
            return [CHTRMessage messageWithText:@"Well, if you like burgers, give them a try sometime. Me, I can't usually get 'em because my girlfriend's a vegetarian, which, pretty much makes me a vegetarian. I do love the taste of a good burger." type:CHTRMessageTypeQuestionBool];
            break;
        }
            
        case CHTRMessageTypeQuestionBool:
        {
            return [CHTRMessage messageWithText:@"Shit, yeah. I got my technique down and everything, I don't be tickling or nothing." type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeQuestionWhy:
        {
            return [CHTRMessage messageWithText:@"Yo, yo, yo, man, you best back off. I'm getting pissed here." type:CHTRMessageTypeStatement];
            break;
        }
            
        case CHTRMessageTypeJoke:
        {
            return [CHTRMessage messageWithText:@"My name is Pitt, and your ass ain't talking your way outta this shit." type:CHTRMessageTypeStatement];
            break;
        }
            
        default:
            return [CHTRMessage messageWithText:@"I don't wanna hear 'bout no motherfucking ifs. All I wanna hear from your ass is, \"You ain't got no problem, Jules, I'm on the motherfucker. Go back in there, chill them niggas out and wait for the cavalry, which should be coming directly\"." type:CHTRMessageTypeStatement];
    }
    
    
}

- (UIImage *)image {
    return [UIImage imageNamed:@"jules"];
}

@end
