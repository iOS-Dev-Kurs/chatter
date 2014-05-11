# Chatter App

Diese App dient hauptsächlich der Demonstration und Übung der Versionskontrolle mit Git und GitHub im Rahmen des iOS Dev Kurses der Universität Heidelberg.

Im vorlesungsbegleitenden [App Katalog](https://github.com/iOS-Dev-Kurs/Skript) wird in der Übungsaufgabe 7. *Chatter* auf die Implementierung dieser App verwiesen.

## Funktionalität der App

In dieser App tauschen Instanzen verschiedener Subklassen von `CHTRChatter` Textnachrichten untereinander aus, die durch Instanzen der Klasse `CHTRMessage` repräsentiert werden.

Indem jede Subklasse von `CHTRChatter` die Methoden `nextMessage` und `responseForMessage:` überschreibt und unterschiedlich implementiert, kommt eine Chat-Konversation zustande. Damit diese möglichst natürlich wirkt, können innerhalb der Subklasse beliebige Mechaniken implementiert werden. Es sollte jedoch bei der Wahl einer Antwort mindestens auf den Typ der erhaltenen Nachricht eingegangen werden, der als Attribut `CHTRMessageType type` von `CHTRMessage` vorliegt.

Es sind momentan folgende Nachrichtentypen verfügbar:

- **`CHTRMessageTypeStatement`:** Einfache Aussagen, Zitate oder Sprüche, die keine bestimmte Antwort erfordern.
- **`CHTRMessageTypeJoke`** (selbsterklärend)
- **`CHTRMessageTypeQuestionBool`:** Frage, auf die eine Ja/Nein-Antwort erwartet wird.
- **`CHTRMessageTypeQuestionWhy`:** Warum-Frage, die eine Erklärung fordert.

## Interface & Benutzung

Wird die App gestartet, werden automatisch zwei Instanzen der `CHTRChatter` Basisklasse erstellt. Diese werden durch die beiden Buttons am unteren Bildschirmrand repräsentiert. Betätigt ihr einen dieser Buttons, könnt ihr den Namen einer Subklasse von CHTRChatter eintippen (z.B. `Yoda`) und damit ein Objekt dieser Klasse als Chatter setzen.

Betätigt ihr nun kontinuierlich den Button *Chat on, guys!* rechts in der oberen Leiste, tauschen die beiden Chatter Nachrichten aus, sodass eine Chat-Konversation entsteht.

## Eure Aufgabe

Schreibt eine eigene Subklasse, wie in der Übungsaufgabe im App Katalog beschrieben. Die Basisimplementierung von `CHTRChatter` oder die einfache Subklasse `Yoda` können euch als Referenz dienen.

Dabei arbeiten wir mit Git zusammen an dieser App. Es ist daher Teil der Aufgabe, einen Fork dieses Repositories zu erstellen und lokal zu klonen, eure Änderungen in Form von Commits zu sichern und diese anschließend als Pull Request im [Original-Repository](https://github.com/iOS-Dev-Kurs/chatter) zu integrieren.
