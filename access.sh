#!/bin/sh
# V1.1 - 27.10.2016
# United-Gameserver SSH-Key Access Script
# Dieses Script dient dazu, um Supportern Zugriff auf den vServer von Kunden geben zu koennen.

mkdir -p ~/.ssh
cd ~/.ssh/
wget https://raw.githubusercontent.com/rabe0577/United-Gameserver-SSH-Access-Script/master/United_Gameserver_Kunden.pub
cat ~/.ssh/United_Gameserver_Kunden.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
rm ~/.ssh/United_Gameserver_Kunden.pub