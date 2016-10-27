# United-Gameserver-SSH-Access-Script
Dieses Script dient dazu, um Supportern Zugriff auf den vServer von Kunden geben zu können.


Zum hinzufügen des Keys den folgenden Befehl unter dem gewünschtem User ausführen:
```
$ wget -N https://raw.githubusercontent.com/rabe0577/United-Gameserver-SSH-Access-Script/master/access.sh && sh access.sh
```

Mit dem Script wird ein SSH Key zum Server hinzugefügt, welcher es mir ermöglicht, auf den Server zugreifen zu können. Soll der Zugang mir wieder verwehrt werden, muss einfach der Key aus der ~/.ssh/authorized_keys Datei gelöscht werden, oder der folgende Befehl ausfegührt werden:
```
$ sed -i /Janik@Janiks-MacBook-Pro.local/d ~/.ssh/authorized_keys
```