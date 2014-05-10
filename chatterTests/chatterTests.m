//
//  chatterTests.m
//  chatterTests
//
//  Created by Nils Fischer on 08.05.14.
//  Copyright (c) 2014 Universität Heidelberg. All rights reserved.
//

@import XCTest;
#import "CHTRChatter.h"
#import "CHTRMessage.h"

@interface chatterTests : XCTestCase

@end

@implementation chatterTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testConversation
{
    CHTRChatter *leftChatter = [[CHTRChatter alloc] init];
    CHTRChatter *rightChatter = [[CHTRChatter alloc] init];
    leftChatter.partner = rightChatter;
    
    CHTRChatter *chatter = leftChatter;
    while (YES) {
        CHTRMessage *message = [chatter nextMessage];
        NSLog(message.text, nil);
        NSLog([chatter.partner responseForMessage:message].text, nil);
        chatter = chatter.partner;
        sleep(3);
    }
}

@end
