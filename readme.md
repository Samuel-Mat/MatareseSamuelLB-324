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
Erklären Sie hier, wie Sie das Passwort aus Ihrer lokalen `.env` auf Azure übertragen.
