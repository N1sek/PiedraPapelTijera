#!/bin/bash

#Colores

RED="\e[91m"
YELLOW="\e[33m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"


while true
do

	arr[0]="Piedra"
	arr[1]="Papel"
	arr[2]="Tijera"

	rand=$[ $RANDOM % 3 ]

	jugada_maquina=${arr[$rand]}
	
	echo
	read -p "Piedra, papel o tijera? " jugada_persona
	echo
	echo "Tú: $jugada_persona"
	echo "Maquina: $jugada_maquina"

	case $jugada_maquina in
		Piedra|piedra)
			case $jugada_persona in
				Piedra|piedra)
					printf "${YELLOW}Empate!${ENDCOLOR}\n"
					;;
				Papel|papel)
					printf "${GREEN}Has ganado!${ENDCOLOR}\n"
					;;
				Tijera|tijera)
					printf "${RED}Has perdido!${ENDCOLOR}\n"
					;;
				*)
					printf "No reconozco esa palabra!\n"
					;;
			esac
		;;	
		Papel|papel)
			case $jugada_persona in
				Piedra|piedra)
					printf "${RED}Has perdido!${ENDCOLOR}\n"
					;;
				Papel|papel)
					printf "${YELLOW}Empate!${ENDCOLOR}\n"
					;;
				Tijera|tijera)
					printf "${GREEN}Has ganado!${ENDCOLOR}\n"
					;;
				*)
					printf "No reconozco esa palabra!\n"
					;;
			esac
		;;
		Tijera|tijera)
			case $jugada_persona in
				Piedra|piedra)
					printf "${GREEN}Has ganado!${ENDCOLOR}\n"
					;;
				Papel|papel)
					printf "${RED}Has perdido!${ENDCOLOR}\n"
					;;
				Tijera|tijera)
					printf "${YELLOW}Empate!${ENDCOLOR}\n"	
					;;
				*)
					printf "No reconozco esa palabra!\n"
					;;
			esac
		;;
	esac
	

	read -p "Quieres seguir jugando? [S/N] " keep_playing
	
	case $keep_playing in
		S|s)
			continue
			;;
		N|n)
			echo
			echo "Gracias por jugar!"
			break
			;;
		*)
			break
			;;
	esac
			
done


















