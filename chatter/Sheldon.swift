//
//  Sheldon.swift
//  chatter
//
//  Created by Marvin A. Ruder on 4/29/16.
//  Copyright © 2016 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Sheldon: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "sheldon"))
    }
    
    override func responseForMessage(message: Message) -> Message {
        switch message.type {
            
        case .Statement:
            return [
                Message(content: "Does it affect me?", type: .QuestionBool),
                Message(content: "It took you 4 years to get through high school?", type: .QuestionBool),
                Message(content: "What do you think their combined IQ is ?", type: .Statement),
                Message(content: "I made tea.", type: .Statement),
                Message(content: "Don't be silly, I'm a fan of anything that tries to replace actual human contact.", type: .Statement),
                Message(content: "If that happens, don't make me wait ten years to watch you eat a tin can.", type: .Statement),
                Message(content: "It wouldn't help. The human body is capable of being flatulent for hours after death.", type: .Statement),
                Message(content: "Who would ever guess that?", type: .Statement),
                Message(content: "Thankfully all the things my girlfriend used to do can be taken care of with my right hand.", type: .Statement),
                Message(content: "Not to mention imaginary.", type: .Statement),
                Message(content: "Sarcasm?", type: .QuestionBool),
                Message(content: "“Not knowing is part of the fun.” Was that the motto of your community college?", type: .QuestionBool),
                Message(content: "Was the starfish wearing boxer shorts? Because you might have been watching Nickelodeon.", type: .QuestionBool),
                Message(content: "How on earth can you say “dirty sock” and “relax” in the same sentence?", type: .QuestionWhy)
            ].randomElement();
            
        case .QuestionBool:
            return [
                Message(content: "No, you don't screw the roommate agreement. The roommate agreement screws you.", type: .Statement),
                Message(content: "Yes, it tells us that you participate in the mass cultural delusion that the suns apparent position relative to arbitrarily defined constellations at the time of your birth somehow affects your personality.", type: .Statement),
                Message(content: "I want to say no, but it's too glorious.", type: .Statement),
                Message(content: "Of course not. Even in my sleep-deprived state, I've managed to pull off another one of my classic pranks. Bazinga!", type: .Statement),
                Message(content: "I do. Now, let's find the kind of gift that makes her feel small and worthless.", type: .Statement),
                Message(content: "No, the X-men were named for the X in Charles Xavier. Since I am Sheldon Cooper, you will be my C-men.", type: .Statement),
                Message(content: "I'll let you get back to sleep now. Good night.", type: .Statement),
                Message(content: "Exactly. See how well we work together?", type: .QuestionWhy),
                Message(content: "Yes. And that's coming from me.", type: .Statement),
                Message(content: "Oh gravity, thou art a heartless bitch.", type: .Statement),
                Message(content: "I know the real reason you never made progress with that idea. You thought of it September 22nd 2007. Two days later, Penny moved in and so much blood rushed to your genitals, your brain became a ghost town.", type: .Statement)
                ].randomElement();
            
        case .QuestionWhy:
            return [
                Message(content: "Obviously, you're not suited for three dimensional chess. Perhaps three dimensional Candy Land would be more your speed.", type: .Statement),
                Message(content: "Apparently you can't hack into a government supercomputer and then try to buy uranium without the Department of Homeland Security tattling to your mother.", type: .Statement),
                Message(content: "This is what you agreed to in the roommate agreement.", type: .Statement),
                Message(content: "I wouldn't tell you the secret. Sssh!", type: .Statement),
                Message(content: "She was late. And she found atomic spectroscopy boring. I wouldn't coitus her with your genitals.", type: .Statement),
                Message(content: "It's a conversation starter.", type: .Statement),
                Message(content: "Well, we had dinner, played some games, and then I spent the night. Oh, and you'll be happy to know that I now have a much better understanding of “friends with benefits.”", type: .Statement)
                ].randomElement();
            
        case .Joke:
            return [
                Message(content: "I'm Batman! Ssssh!", type: .Statement),
                Message(content: "A neutron walks into a bar and asks how much for a drink. The bartender replies “for you, no charge.”", type: .Statement),
                Message(content: "Bazinga!", type: .Statement),
                Message(content: "I think that you have as much of a chance of having a sexual relationship with Penny as the Hubble telescope does of discovering at the center of every black hole is a little man with a flashlight searching for a circuit breaker.", type: .Statement)
                ].randomElement()
        }
        
        
    }
    
    
    override func nextMessage() -> Message {
        return [
            Message(content: "That's my spot! In the winter that seat is close enough to the radiator to remain warm, and yet not so close as to cause perspiration. In the summer it's directly in the path of a cross breeze created by open windows there, and there. It faces the television at an angle that is neither direct, thus discouraging conversation, nor so far wide to create a parallax distortion.", type: .Statement),
            Message(content: "Scissors cuts paper, paper covers rock, rock crushes lizard, lizard poisons Spock, Spock smashes scissors, scissors decapitates lizard, lizard eats paper, paper disproves Spock, Spock vaporizes rock, and as it always has, rock crushes scissors.", type: .Statement),
            Message(content: "I'm not crazy, my mother had me tested.", type: .Statement),
            Message(content: "Well, today we tried masturbating for money.", type: .Statement),
            Message(content: "Do you want to hear an interesting thing about stairs?", type: .QuestionBool),
            Message(content: "(knock, knock, knock) Penny? (knock, knock, knock) Penny? (knock, knock, knock) Penny?", type: .Statement),
            Message(content: "If the height of a step is off by as little as two millimeters, most people will trip.", type: .Statement),
            Message(content: "I look forward to your next birthday when we do it again!", type: .Statement)
            ].randomElement()
    }
    
}
