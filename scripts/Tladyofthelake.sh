#!/bin/bash
echo " "
echo " "
echo "Hello, I am the one they call lady of the lake. I am knowledgable about these paths and trails, and have seen many travelers come and go " 
echo "For the right price I may be able to point you in the right direction"
echo " "
echo "You have two choices: A) Give the lady a peace offering   B) keep traveling alone and ignore the lady" 
read ans
if [ $ans = 'A' ]
then 
echo "Dont head deeper into the lake, there are sirens out there"
echo " "
echo "You have two choices: A) Give the lady another peace offering   B) Thank the lady and keep moving"
read ans1
if [ $ans1 = 'A' ]
then 
echo "Head to the bridge if you want to get to the castle"
else
echo " "
echo "Nice talking to you, have a nice trip!"
fi
else
echo " "
echo "Head deeper down into the lake, thats where you'll find what you truly seek"
fi

