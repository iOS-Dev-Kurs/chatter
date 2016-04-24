iOS Development Course | Heidelberg University | [Nils Fischer](https://github.com/knly) | [ios-dev-kurs.github.io](ios-dev-kurs.github.io)

For detailed instructions in German see the [App Katalog](https://github.com/ios-dev-kurs/skript).

---

# Exercise 3 - Chatter

In dieser App tauschen Instanzen verschiedener Subklassen von `Chatter` Textnachrichten untereinander aus, die durch Instanzen des Structs `Message` repräsentiert werden.

Indem jede Subklasse von `Chatter` die Methoden `nextMessage` und `responseForMessage:` überschreibt und unterschiedlich implementiert kommt eine Chat-Konversation zustande. Damit diese möglichst natürlich wirkt können innerhalb der Subklasse beliebige Mechaniken implementiert werden. Es sollte jedoch bei der Wahl einer Antwort mindestens auf den Typ der erhaltenen Nachricht eingegangen werden, der als Attribut `type: MessageType` von `Message` vorliegt.

Es sind momentan folgende Nachrichtentypen verfügbar:

- **`Statement`:** Einfache Aussagen, Zitate oder Sprüche, die keine bestimmte Antwort erfordern.
- **`Joke`** (selbsterklärend)
- **`QuestionBool`:** Frage, auf die eine Ja/Nein-Antwort erwartet wird.
- **`QuestionWhy`:** Warum-Frage, die eine Erklärung fordert.

## Interface & Benutzung

Wird die App gestartet seht ihr ein Chatfenster, welches zwei *Chatter* Instanzen zum chatten verwenden. Diese werden durch die beiden Buttons am unteren Bildschirmrand repräsentiert. Betätigt ihr einen dieser Buttons könnt ihr den Namen einer Subklasse von `Chatter` eintippen (z.B. `Yoda`) und damit ein Objekt dieser Klasse als Chatter setzen.

Betätigt ihr nun kontinuierlich den Button *Chat on, guys!* rechts in der oberen Leiste, tauschen die beiden Chatter Nachrichten aus, sodass eine Chat-Konversation entsteht.

## Eure Aufgabe

Schreibt eine eigene Subklasse, wie in der Übungsaufgabe im App Katalog beschrieben. Die Basisimplementierung von `Chatter` und die einfache Subklasse `Yoda` können euch als Referenz dienen.

Dabei arbeiten wir mit Git zusammen an dieser App. Es ist daher Teil der Aufgabe, einen Fork dieses Repositories zu erstellen und lokal zu klonen, eure Änderungen in Form von Commits zu sichern und diese anschließend als Pull-Request im [Original-Repository](https://github.com/iOS-Dev-Kurs/chatter) zu integrieren.
