//
//  Merkel.swift
//  chatter
//
//  Created by Florian Petatz on 11.04.17.
//  Copyright © 2017 Universität Heidelberg. All rights reserved.
//

import Foundation
import UIKit

class Merkel: Chatter {
    
    required init() {
        super.init(image: UIImage(named: "merkel"))
    }
    
    override func nextMessage() -> Message {
        return [
            Message(content: "Scheitert der Euro, scheitert Europa.", type: .statement),
            Message(content: "Ich kann versprechen, das Brandenburger Tor steht noch eine Weile.", type: .statement),
            Message(content: "Dass ich einmal im Rosengarten des Weißen Hauses stehen und von einem amerikanischen Präsidenten die Freiheitsmedaille empfangen würde, das lag jenseits aller meiner Vorstellungskraft.", type: .statement),
            Message(content: "Mit dem Kopf durch die Wand wird nicht gehen. Da siegt zum Schluss immer die Wand.", type: .statement),
            Message(content: "Denken beim Reden ist auch nicht so einfach.", type: .joke),
            Message(content: "Wir schaffen das!", type: .questionWhy),
            Message(content: "Auch mir hat eine Satiresendung schon einmal richtig aus der Seele gesprochen.", type: .statement),
            Message(content: "Schweigen wird ja sowieso zu einer Rarität in unserer Gesellschaft.", type: .joke),
            Message(content: "Alles, was noch nicht gewesen ist, ist Zukunft, wenn es nicht gerade jetzt ist.", type: .statement)
            ].randomElement()
    }
    
    override func responseForMessage(_ message: Message) -> Message {
        switch message.type {
        case .statement:
            return [
                Message(content: "Es ist ja vielleicht unser bestgehütetes Geheimnis, dass die Chemie stimmt.", type: .statement),
                Message(content: "Wir müssen aufpassen, dass wir nicht zu einer Nation werden mit Leuten, die alle vor dem Fernseher sitzen und genau wissen, wer wie Fußball spielen muss, aber selber nicht mehr in der Lage sind, einen Ball vor sich her zu schieben.", type: .joke),
                Message(content: "Überall stoßen wir auf ein Denken, das kein Morgen kennt.", type: .statement),
                Message(content: "Wir sind jetzt gerade im Sommer der Entscheidungen. Und dann kommen der Herbst und dann der Winter der Entscheidungen. Jetzt kommen überhaupt nur noch Entscheidungen.", type: .statement),
                Message(content: "Ich könnte nicht Politikerin sein, wenn mir das Schweigen lieber wäre als das Reden.", type: .statement)
                ].randomElement()
        case .questionBool:
            return [
                Message(content: "Nein. Ich habe gewisse kamelartige Fähigkeiten. Ich habe eine gewisse Speicherfähigkeit. Aber dann muss ich mal wieder auftanken.", type: .statement),
                Message(content: "Ja! Wir sind frei, mitmenschlich, offen.", type: .statement),
                Message(content: "Natürlich. Die Grünen wissen wenigstens noch, wogegen sie sind. Bei der SPD ist nicht mal mehr das sicher.", type: .statement),
                Message(content: "", type: .statement),
                Message(content: "Deutschland ist und bleibt ein weltoffenes Land.", type: .statement)
                ].randomElement()
        case .questionWhy:
            return [
                Message(content: "Weil ich entschieden habe , dass das Programm ausgewogen und richtig ist.", type: .statement),
                Message(content: "Weil Nutella immer geht", type: .statement),
                Message(content: "Was ein Gewinner- oder Verliererthema ist, kann man nicht nach Umfragen zuordnen.", type: .statement)
                ].randomElement()
        case .joke:
            return [
                Message(content: "Hahaha - Politik heißt nicht, ständig nach dem Wetterhahn auf dem Dach zu schauen, sondern seine Überzeugungen umzusetzen.", type: .statement),
                Message(content: "Wenn ich da immer gleich eingeschnappt wäre, könnte ich keine drei Tage Bundeskanzlerin sein.", type: .statement)
                ].randomElement()
        }
    }
    
    
}
