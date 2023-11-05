# LB 324

## Aufgabe 2
Hier sehen Sie eine Anleitung, wie die Pre-Commits für Programmierer konfiguriert werden.

### Schritt 1
Laden Sie sich das GitHub Projekt herunter. Dazu müssen Sie zuerst auf Ihrem Computer in das Ordnerverzeichnis navigieren, in welches
Sie den Code kopieren möchten. Danach müssen Sie ein Terminal in diesem Ordnerverzeichnis öffnen. 
<br>
Geben Sie diesen Befehl ein: **git clone https://github.com/Samuel-Mat/MatareseSamuelLB-324.git**

### Schritt 2
Öffnen Sie nun den geklonten Ordner mit Visual Studio Code. Im eingebauten Terminal müssen Sie nun zuerst
alle requirements installieren.
<br>
Geben Sie diesen Befehl ein: **pip install -r requirements.txt**
<br>
In der Textdatei wird ebenfalls automatisch Pre-Commit installiert, also müssen Sie sich darum keine Sorgen machen. 
<br>
Mit dem Befehl: **pre-commit --version** 
<br>
können Sie überprüfen, ob die Installation geklappt hat.

### Schritt 3
Nun müssen Sie nur noch git hook Script installieren.
<br>
Dafür verwenden Sie folgenden Befehl: **pre-commit install**
<br>
Nun sollte alles eingerichtet sein.

    

## Aufgabe 4
Ich hatte einen Fehler mit dem Azure Konto, sodass ich keine Applikation auf Azure deployen durfte.
Also habe ich mich dazu entschieden, die Applikation zu dockerisieren und damit Aufgabe 4 zu lösen.
<br>
<br>
Zuerst musste ich ein Dockerfile erstellen, damit Docker weiss, wie das Image erstellt werden soll und was als Base Image verwendet wird. Sie können die Datei unter
dem Namen "Dockerfile" finden.
<br>
<br>
Danach habe ich noch eine docker-compose.yml Datei erstellt, damit man mit dem Befehl **docker-compose up** den Container einfach aus Docker Hub herunterladen und
starten kann. Sie können die Datei unter dem Namen "docker-compose.yml" finden.
<br>
<br>
Zu guter letzt musste ich noch das YAML erstellen, um mich in Docker anzumelden und das Image zu builden und zu pushen. Hier gab es noch eine Besonderheit. In der
Aufgabe war ebenfalls davon die Rede, das Passwort aus der .env Datei sicher auf Azure zu übertragen. Dies war in Docker nicht möglich, weshalb ich nach einer
Alternative gesucht habe. Schlussendlich habe ich nun das Passwort für die Applikation in eine secret Variable auf Github gespeichert. Die YAML Workflow Datei erstellt
mit der Hilfe dieses secrets eine temporäre .env Datei, die für den Build des Images verwendet wird. Ich bin mir sicher, dass dies nicht die sicherste und eleganteste Lösung
dafür ist, aber es erfüllt dennoch den Zweck.
<br>
<br>
Sie können den Container selbst starten, indem Sie sich den Code herunterladen und im Ordnerverzeichnis diesem Befehl ausführen:
<br>
<br>
**docker-compose up**
<br>
<br>
Beachten Sie dabei, dass die Docker Desktop Applikation dafür gestartet werden muss.

