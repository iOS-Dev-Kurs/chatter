//
//  Grumpy_Cat.m
//  chatter
//
//  Created by Andreas Widmann on 17.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Grumpy_Cat.h"

@implementation Grumpy_Cat

- (CHTRMessage *)nextMessage;
{
    // Here, we just pick a random message, but you could implemented some clever mechanics to generate a more natural conversation.
    // You can also add properties to CHTRMessage for this, but make sure it still works for everyone else
    
    // Note: there are many ways to pick a random object from an array, see responseForMessage: below for examples
    
    return [ @[ [CHTRMessage messageWithText:@"Why don't you slip into something more comfortable? Like a coma!" type:CHTRMessageTypeQuestionWhy],
                [CHTRMessage messageWithText:@"Do you really think I like you?" type:CHTRMessageTypeQuestionBool],
                [CHTRMessage messageWithText:@"Why THE HELL are you talking to me?" type:CHTRMessageTypeQuestionWhy],
                [CHTRMessage messageWithText:@"The only joke I know is you!" type:CHTRMessageTypeJoke],
                [CHTRMessage messageWithText:@"I hate the world!" type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"Roses are red, violets are blue... I hate you!" type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"Why don't you just leave?" type:CHTRMessageTypeQuestionWhy],
                [CHTRMessage messageWithText:@"I like my humans, the way i like my coffe. I hate coffe!" type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"Are you alway like this?" type:CHTRMessageTypeQuestionBool],
                [CHTRMessage messageWithText:@"To hate or not to hate, that is the ... nope, I hate it!" type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"I was attacked by a Dementor once, he starved to death!" type:CHTRMessageTypeStatement],
                [CHTRMessage messageWithText:@"Your father once made a joke! You!" type:CHTRMessageTypeJoke],
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
                    response.text = @"Could you stop talking to me? Thanks!";
                    break; // don't forget to break! otherwise, all cases below will execute
                case 1:
                    response.text = @"Why don't you just kill yourself?";
                    break;
                case 2:
                    response.text = @"No! Just no!";
                    break;
                case 3:
                    response.text = @"Is there someone behind me? Or do you really try to talk to me?";
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
            return [ @[ [CHTRMessage messageWithText:@"No!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"No! Shut up!" type:CHTRMessageTypeStatement],
                        ] randomObject];
            
        case CHTRMessageTypeQuestionWhy:
            return [ @[ [CHTRMessage messageWithText:@"Because I hate you!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Because you suck!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"Because fuck you, that's why!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"... Shut up!" type:CHTRMessageTypeStatement],
                        ] randomObject];
            
        case CHTRMessageTypeJoke:
            return [ @[ [CHTRMessage messageWithText:@"Is that supposed to be funny?!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"You're not funny!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"I hope you die from laughing!" type:CHTRMessageTypeStatement],
                        [CHTRMessage messageWithText:@"I tried laughing once, it was awful" type:CHTRMessageTypeStatement]
                        ] randomObject];
            
        default:
            return [CHTRMessage messageWithText:@"Shut up!" type:CHTRMessageTypeStatement];
    }
}


- (UIImage *)image {
    return [UIImage imageNamed:@"grumpy"];
}
@end
