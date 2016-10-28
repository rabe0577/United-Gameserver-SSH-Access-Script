# United-Gameserver-SSH-Access-Script
Dieses Script dient dazu, um Supportern Zugriff auf den vServer von Kunden geben zu können.


### Hinzufügen
---
Zum hinzufügen des Keys den folgenden Befehl unter dem gewünschtem User ausführen:
```
$ wget -N https://git.io/access.sh && sh access.sh
```

### Entfernen
---
Mit dem Script wird ein SSH Key zum Server hinzugefügt, welcher es mir ermöglicht, auf den Server zugreifen zu können. Soll der Zugang mir wieder verwehrt werden, muss einfach der Key aus der ~/.ssh/authorized_keys Datei gelöscht werden, oder der folgende Befehl ausfegührt werden:
```
$ sh access.sh --revoke
```