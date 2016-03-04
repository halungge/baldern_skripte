# baldern_skripte

Shell-Skripte zum bearbeiten von Bildern für die Bildergalerie des SAC Baldern. 

# fotothek.sh
##Voraussetzung
Die Skripte laufen unter Linux und sollten mit leichten Anpassungen auch unter MacOS zum laufen zu bringen sein. 

Abhängigkeiten/Installation: 
* ImageMagick (http://www.imagemagick.org/script/index.php) installieren
* das 'downsize' Skript von Fred Weinhaus runterladen http://www.fmwconcepts.com/imagemagick/downsize/index.php und im Pfad installerien,
(bzw. in 'fotothek.sh' den absoluten Pfad für  'downsize' verwenden).

##Benutzen
* In dem Folder, wo 'fotothek.sh' liegt einen Verzeichnis mit Namen nach dem Muster 'yyyyMMdd_tour' ablegen anlegen und die Bilder 
dort hinein verschieben.
  
* fotothek.sh editieren die Variabeln year, month, day, place entsprechend setzen und
   >./fotothek.sh 
aufrufen.

Das Skript renamed die Bilder in yyyy_tour_xx.jpg kompromiert sie auf max 500 KB und und generiert ein Textfile 'yyyyMMdd_tour/legend.txt' 
mit den VSIG Syntax für die Bilder, die dann auf der Homepage in den Bilderbeitrag kopiert werden können.
Bild unterschriften müssen noch händisch ergänzt werden.

Die Original Bilder werden in den Ordner 'yyyyMMdd_tour/archive' verschoben.
