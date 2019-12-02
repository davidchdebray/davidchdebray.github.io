#!/bin/sh

# VARIABLES
Dir1=~/SYNC
Dir2=/var/www/html

echo "Hiya Bossman! What would you like to do ? "
echo " 		1) Export Website configuration "
echo "		2) Import new Website configuration "
echo "		3) Backup existing configuration and mail it "
echo ""
echo "		0) Exit script "

read CHOICE
echo " "
case $CHOICE in
	1) Export_Config ;;
	2) Import_Config ;;
	3) Backup_Config ;;
	0) exit ;;
	*) echo "Wrong answer, better luck next time ^^ " &&  echo " " && echo "	Press Enter to Continue... " && read && clear ;;
esac;

