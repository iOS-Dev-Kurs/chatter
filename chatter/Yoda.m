//
//  Yoda.m
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

#import "Yoda.h"

@implementation Yoda

- (CHTRMessage *)nextMessage {
    return [@[[CHTRMessage messageWithText:@"Do. Or do not. There is no try." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"May the force be with you." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Wars not make one great." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Judge me by my size, do you?" type:CHTRMessageTypeQuestionBool],
              [CHTRMessage messageWithText:@"Patience you must have, my young padawan." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"Powerful you have become, the dark side I sense in you." type:CHTRMessageTypeStatement],
              [CHTRMessage messageWithText:@"You must unlearn what you have learned." type:CHTRMessageTypeStatement]
              ] randomObject];
}

- (CHTRMessage *)responseForMessage:(CHTRMessage *)message {
    return [CHTRMessage messageWithText:@"Hmm..." type:CHTRMessageTypeStatement];
}

- (UIImage *)image {
    return [UIImage imageNamed:@"yoda"];
}

@end
