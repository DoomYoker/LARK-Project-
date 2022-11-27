#!/bin/bash

echo " "
echo " "
echo "While crawling through the cave you stumble upon a sleeping Griffin and her two children, you try to quietly back away but stumble, waking the beast... "
echo "You have read of these mighty creatures, and know that they are wise and friendly but also weary of strangers who may hurt their young"
echo "You have two options: "
echo " "
echo "A) Offer the Griffin a peace offering    B) Run and continue exploring the cave on your own"
read ans
if [ $ans = 'A' ]
then
echo " "
echo " "
echo "The Griffin accepts your peace offering, and you gain its trust"
echo "The Griffin leads you to an exit in the cave you have two options: "
echo " "
echo "A) Exit the cave as is, and explore the barn you see in the distance    B) Continue exploring the cave"
read ans1
if [ $ans1 = 'A' ]
then 
echo " "
echo " "
echo "You have exited the cave, and now move to explore the barn in the distance"
echo "(Use cd .. to reenter the cave and ./Tgriffin to awake the Griffin once again)"
else
echo " "
echo " "
echo "You have chosen to keep exploring the cave, use ./Tgriffin.sh at any point in the cave to rewake the Griffin"
fi 
else
echo " "
echo " "
echo "You have chosen to keep exploring the cave, use ./TGriffin.sh at any point in the cave to rewake the Griffin"
fi
