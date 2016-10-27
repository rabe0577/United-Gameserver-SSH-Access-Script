#!/bin/sh
# V2.0 - 27.10.2016
# United-Gameserver SSH-Key Access Script
# Dieses Script dient dazu, um Supportern Zugriff auf den vServer von Kunden geben zu koennen.

if [ $1 = "--revoke" ]; then
	sed -i /Janik@Janiks-MacBook-Pro.local/d ~/.ssh/authorized_keys
	echo "\033[31mSSH-Key wurde erfolgreich entfernt!\033[0m"
	rm $0
	echo "\033[31mAccess Script wurde gelöscht.\033[0m"
else
	mkdir -p ~/.ssh
	cd ~/.ssh/
	wget https://raw.githubusercontent.com/rabe0577/United-Gameserver-SSH-Access-Script/master/United_Gameserver_Kunden.pub
	cat ~/.ssh/United_Gameserver_Kunden.pub >> ~/.ssh/authorized_keys
	chmod 600 ~/.ssh/authorized_keys
	rm ~/.ssh/United_Gameserver_Kunden.pub
	echo "\033[32mSSH-Key wurde erfolgreich hinzugefügt!\033[0m"
	echo "\033[32mZum entfernen \033[36m\"sh $0 --revoke\"\033[32m eingeben.\033[0m"
fi