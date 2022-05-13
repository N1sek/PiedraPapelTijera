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
			if [[ $jugada_persona == "Piedra" || $jugada_persona == "piedra" ]]; then
				printf "${YELLOW}Empate!${ENDCOLOR}\n"
			elif [[ $jugada_persona == "Papel" || $jugada_persona == "papel" ]]; then
				printf "${GREEN}Has ganado! ${ENDCOLOR}\n"
			else
				printf "${RED}Has perdido. Suerte para la proxima!${ENDCOLOR}\n"
			fi
			;;
		Papel|papel)
			if [[ $jugada_persona == "Papel" || $jugada_persona == "papel" ]]; then
		                printf "${YELLOW}Empate!${ENDCOLOR}\n"
		        elif [[ $jugada_persona == "Tijera" || $jugada_persona == "tijera" ]]; then
		                printf "${GREEN}Has ganado! ${ENDCOLOR}\n"
		        else
		                printf "${RED}Has perdido. Suerte para la proxima!${ENDCOLOR}\n"
			fi
			;;
		Tijera|tijera)
			if [[ $jugada_persona == "Tijera" || $jugada_persona == "tijera" ]]; then
		                printf "${YELLOW}Empate!${ENDCOLOR}\n"
		        elif [[ $jugada_persona == "Piedra" || $jugada_persona == "piedra" ]]; then
		                printf "${GREEN}Has ganado! ${ENDCOLOR}\n"
		        else
		                printf "${RED}Has perdido. Suerte para la proxima!${ENDCOLOR}\n"
			fi
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


















