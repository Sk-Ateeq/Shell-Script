#!/bin/bash
<< task 
    If , elif,  else statements understand with read -p command
task

shopt -s nocasematch  # Enable case-insensitive matching

read -p "Enter your Fav anime: " anime
read -p "Enter that anime IMdb rating: " rating

if [[ $anime == "death note" ]] || [[ $anime == "Attack on titan" ]] || [[ $anime == "One Piece" ]];
then
	echo " You have PERFECT taste in anime"
shopt -u nocasematch  # Disable case-insensitive matching after

elif (( $(echo "$rating >= 9.5" | bc -l) ));
then
	echo " You have Good taste in anime selection"
else 
	echo "You have your personal taste"
fi
