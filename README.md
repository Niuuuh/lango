<h1> Lango </h1>

KI-gestützter Sprachlernbegleiter

<h3> Features </h3>
<ul>
    <li> Onboarding </li>
    <li> Sprache und Gesprächsthema wählen </li>
    <li> Unterhaltung mit Sprachassistent </li>
    <li> Nachschlagen von Vokabeln </li>
    <li> Feedback nach dem Gespräch </li>
    <li> Vergangene Gespräche ansehen </li>
</ul>

<h3> Architektur </h3>

<h4>Feature-First</h4>
Die App ist nach Features aufgebaut. Alles, was zusammengehört, liegt auch zusammen.
Jedes Feature ist wie ein kleines, eigenständiges Modul mit eigener UI, Logik und Daten-Schicht.

<h4>Layer-Second</h4>
Innerhalb eines Features ist der Code in drei Schichten unterteilt:
<ul>
    <li> <b>Presentation</b>: Widgets, Screens, BLoCs/Cubits </li>
    <li> <b>Domain</b>: Business-Logik, Use Cases, Entities </li>
    <li> <b>Data</b>: Repository-Implementierungen, API-Models, Netzwerkzugriffe </li>
</ul>
Durch die Trennung vermischen sich UI, Logik und Datenzugriff nicht und Features problemlos getestet oder erweitert werden.

State Management: BLoC <br>
Dependency Injection: GetIt <br>
Routing: GoRouter <br>
Network: Dio <br>