//
//  CHTRPerson.h
//  chatter
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

@import Foundation;
#import "CHTRMessage.h"
#import "NSArray+CHTRRandomObject.h"

@interface CHTRChatter : NSObject

@property (weak, nonatomic) CHTRChatter *partner;
@property (strong, nonatomic) UIImage *image;

- (CHTRMessage *)nextMessage;
- (CHTRMessage *)responseForMessage:(CHTRMessage *)message;

@end
