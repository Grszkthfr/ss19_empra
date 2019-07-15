# Protokol Sitzung 08 #

Sitzungsdatum: 01.07.2019

## Themen ##

### Weiteres Vorgehen nach der Erhebung der Daten###

#### Best practices: Daten ####

##### FAIR-Prinzip #####

•	Findable
•	Accessible 
•	Interoperable: Programme sind für alle accessible, am besten ist es wenn man Daten irgendwo ablegt, wo man nicht von Microsoft abhängig
•	Reusable 
 
##### Tidy Data #####

•	Bsp.: Excel-Tabelle so anlegen, dass der Computer das gut verstehen kann 
•	Jede Variable hat eine Spalte 
•	Jede Reihe ist eine Versuchsperson --> aber nur eine Beobachtung pro Zeile 
•	Zwei verschiedene Arten von Erhebungen --> 2 Tabellen (theoretisch) 
 
-->  sind unsere Daten FAIR und tidy? 
•	Falls nicht: R4DS --> Aufräumprinzip 
 
--> Verwendung von R zur Überprüfung 
•	Variablen-Beschreibungen (1=stare, …) aufschreiben 
•	Daten sind simuliert
•	Transformation: time crossing und staring time -> Berechnung 
•	Visualize: 
o	Punkteplot: x-Achse: Kondition, y-Achse: time crossing 
o	Box-Plot
o	…

#### Was ist ein Modell? #####

 = Vereinfachungen, Idealtyp, wenn man Ausreißer weglässt 
-	All models are wrong
o	Entsprechen nie der Wirklichkeit 
o	Wenn ich ein richtes Automodell baue, ist es ein richtiges Auto 
-	Some are useful 
o	Sachen, die nicht nützlich sind, werden weggelassen 
o	Rückschlüsse zeigen 
 
##### Prozess der statistischen Modellierung #####

-> Schritte 1-4 haben wir schon gemacht 

5)Fit the model for Data 
7)Hypothese Testen und 

-	wir tun so als hätten wir die Daten schon erhoben --> Jamovi, SPSS oder Jasp
-	Damit kann man Hypothesen testen
-	Man hat eine Oberfläche, GUI für statistische Auswertungen 
-	Jamovi: R-Code kann man sich anzeigen lassen 
-	Variablen auswählen, vergleichen, aufteilen nach, zB. Stare
-	Kontinuierliche Variablen kann er nicht splitten, logischerweise
-	Bei jedem neuen öffnen von anderen Variablenkombis, neue Analyse 
-	Omv ist das dateiformat von jamovi 

-> Forschungsfrage 
-	Gibt es einen signifikanten Unterschied zwischen der time crossing in den zwei Konditionsgruppen 
-	T-Test für unabhängige Variablen 
-	Abhängige Variable: time crossing 
-	Unabhängige Variable: Starren oder nicht-starren

##### Jamovi-Datenauswertung #####

•	Die Simulation ist nicht signifikant für den zweiseitigen t-test 
•	Wenn wir jetzt nur einseitig testen halbiert sich der t-wert 
 
-> Independent Sample t-Test
o	Mean dif, Effect size, Descriptives, Descriptives plots 
o	T-test ist sowas wie eine lineare Regression 
-> lineare Regression  
o	Lin Regression berechnet beidseitig
o	Aber wir testen nur einseitig 
o	Das Tolle ist, wir können noch die anderen Faktoren ergänzen -->  mega flexibel 
-> Anova, ist letztendlich auch eine Regression 
o	Wir könnten das auch mit Anova rechnen 
o	P-Wert ist gleich 
o	Leichter interpretierbar 
 

### Communication ###
•	Poster 
•	Tipps von RZ
•	Struktur 
•	DIN A0
 
## Aufgaben ##
•	Anova rechnen 
o	Was passiert, wenn ich die Wochentage hinzufüge? 
o	Wie viel Sinn macht eine Dreifachinteraktion?
o	Auf zwei Faktoren beschränken 
o	3 oder 4 Faktoren sind nicht easy zu plotten 
•	Rechenzentrum-Seite zur Postergestaltung nutzen, nachlesen 
•	Poster-Tipps von Jonas durchlesen 
•	Poster: 
o	Einleitung und Methoden auf Poster --> weniger wissenschaftlich auf deutsch 
o	Weniger Text ist besser 
o	Methoden, auch ohne Text möglich 
