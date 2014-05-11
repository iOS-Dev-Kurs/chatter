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
    // Here, we just pick a random message, but you could implemented some clever mechanics to generate a more natural conversation.
    // You can also add properties to CHTRMessage for this, but make sure it still works for everyone else
    
    // Note: there are many ways to pick a random object from an array, see responseForMessage: below for examples
    
    return [ @[ [CHTRMessage messageWithText:@"Say, do you like butterflies?" type:CHTRMessageTypeQuestionBool],
                [CHTRMessage messageWithText:@"Did YOU like the last Harry Potter movie?" type:CHTRMessageTypeQuestionBool],
                [CHTRMessage messageWithText:@"Why THE HELL are you saying that?" type:CHTRMessageTypeQuestionWhy],
                [CHTRMessage messageWithText:@"Are we really that close?" type:CHTRMessageTypeQuestionBool],
                [CHTRMessage messageWithText:@"Two photons go into a bar... argh I forget the rest <.<" type:CHTRMessageTypeJoke],
                [CHTRMessage messageWithText:@"I like to move it, move it." type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"This is weird." type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"I always thought, the lemon is an underrated fruit. Care to weigh in?" type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"Are you alway like this?" type:CHTRMessageTypeQuestionBool],
                [CHTRMessage messageWithText:@"Now I am confused..." type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"Time flies like an arrow; fruit flies like a banana. Get it ? ;)" type:CHTRMessageTypeJoke],
                [CHTRMessage messageWithText:@"Why?!" type:CHTRMessageTypeQuestionWhy]
                ] randomObject];
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message
{
    switch (message.type) {
        
        case CHTRMessageTypeStatement:
        {
            // There are a lot of ways to choose a random message
            // You can generate a random number and do a switch (not very elegant):
            CHTRMessage *response = [[CHTRMessage alloc] init];
            NSUInteger r = arc4random_uniform(6);
            switch (r) {
                case 0:
                    response.text = @"You said it, not me...";
                    break; // don't forget to break! otherwise, all cases below will execute
                case 1:
                    response.text = @"Absolutely!";
                    break;
                case 2:
                    response.text = @"That's just weird.";
                    break;
                case 3:
                    response.text = @"Oh, really?!";
                    break;
                case 4:
                    response.text = @"That's YOUR point of view.";
                    break;
                case 5:
                    response.text = @"What?! I think I spider.";
                    break;
                default:
                    break;
            }
            response.type = CHTRMessageTypeStatement;
            return response;
        }
            
        case CHTRMessageTypeQuestionBool:
            // Instead, you can use the class method messageWithText:type: I added to CHTRMessage to quickly create an array of messages.
            // I also added an instance method randomObject to NSArray that you can use to directly return a random object from the array (randomObject is implemented in the NSArray+CHTRRandomObject.m file).
            // The following uses a lot of shorthand notation ;)
            // @[ ... ] returns an array of the given CHTRMessage objects and [ ... randomObject] calls the randomObject method on this array, selecting one of them
            // This way you instantiate quite a lot of objects just to return one of them, of course. There may be a more efficient way to do this.
            return [ @[ [CHTRMessage messageWithText:@"Of course not!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Yeah, I think so." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Definitely. But that's a good thing :)" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"YOLO!" type:CHTRMessageTypeStatement]
                        ] randomObject];
            
        case CHTRMessageTypeQuestionWhy:
            return [ @[ [CHTRMessage messageWithText:@"Just because I can!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Because that's the way it is." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Who knows?!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Just accept it, buddy." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"I have never given it much thought..." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Hmm, I am not quite sure... but it IS an interesting question." type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Erm, why not?!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Only God knows why..." type:CHTRMessageTypeStatement],
                        ] randomObject];
            
        case CHTRMessageTypeJoke:
            return [ @[ [CHTRMessage messageWithText:@"Is that supposed to be funny?! <.<" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"HAHA, you are killing me :D" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"rofl :D:D" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Good one ;)" type:CHTRMessageTypeStatement]
                        ] randomObject];
            
        default:
            return [CHTRMessage messageWithText:@"No idea what you are talking about..." type:CHTRMessageTypeStatement];
    }
}

- (void)setPartner:(CHTRChatter *)partner {
    // making sure the partner property is always pointing in both directions
    if (self.partner==partner) return;
    _partner = partner;
    partner.partner = self;
}

@end
