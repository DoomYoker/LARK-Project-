#!/bin/bash
echo " "
echo " "
echo "While exploring the castle you stumble upon a corridor with what seems to be a massive snake skin left behind"
echo "You turn to see two yellow dots staring at you in the darkness followed by a hiss"
echo " "
echo "You have two choices: "
echo "A) Retreat and keep exploring other parts of the castle    B) Fight the basilisk"
read ans
if [ $ans = 'B' ]
then
echo " "
echo " "
echo "You will fight the basilisk by rolling random numbers between 0-10, the basilisk has a total health of 30"
echo "Each time you strike the basilisk it hits back with a hit of 5, you have a health of 25. "
echo "Basically, you must roll 30 total points in 5 turns (each turn is up to 10 points) Good Luck!"
PlayerHealth=25;
BasiliskHealth=30;
NumberRolls=0;
AttacksLeft=5;
while [ $NumberRolls -lt 6 ]
do
AttacksLeft=$((5-$NumberRolls))
echo " "
echo "Player Health: $PlayerHealth   Basilisk Health: $BasiliskHealth   Attacks Left:  $AttacksLeft "
echo "Press A to Attack, and B to Surrender: "
read response
if [ $response = 'A' ]
then 
DIV=$((10+1))
RandAttack=$(($RANDOM%$DIV))
BasiliskHealth=$(($BasiliskHealth-$RandAttack))
DIV2=$((10+1))
RandAttack2=$(($RANDOM%$DIV2))
PlayerHealth=$(($PlayerHealth-$RandAttack2))
else
echo " "
echo "You have surrendered, take some time to heal, then try your luck again by using ./Tbasilisk.sh in the castle"
NumberRolls=6
fi
if [ $PlayerHealth -le 0 ]
then 
echo " "
echo "You have been defeated"
NumberRolls=6
fi
if [ $BasiliskHealth -le 0 ]
then 
echo " "
echo "Congratulations, You have defeated the basilisk"
NumberRolls=6 
fi
NumberRolls=$(($NumberRolls+1))
done
echo " "
echo "Good luck exploring the castle, use ./Tbasalisk.sh to"
echo "Interact with the basalisk again in the future"
else
echo " "
echo "You have chosen to reatreat and keep exploring the castle. Good luck, use ./Tbasalisk.sh to"
echo "Interact with the basilisk again in the future" 
fi   
