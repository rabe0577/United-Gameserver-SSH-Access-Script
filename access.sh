#!/bin/sh
# V1.0 - 12.03.2016
# United-Gameserver SSH-Key Access Script
# Dieses Script dient dazu, um Supportern Zugriff auf den vServer von Kunden geben zu koennen.

mkdir -p ~/.ssh
cd ~/.ssh/
wget http://download.janik-rabe.de/United_Gameserver_Kunden.pub
cat ~/.ssh/United_Gameserver_Kunden.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
rm ~/.ssh/United_Gameserver_Kunden.pub