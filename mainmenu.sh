#!/bin/sh
MainMenu() {
   while [ "$CHOICE" != "START" ]
   do
clear
echo "================================================================="
|"
|"
|" ----"
echo "|
echo "|
echo "|
Oracle All Inclusive Tool
Main Menu - Select Desired Operation(s):
<CTRL-Z Anytime to Enter Interactive CMD Prompt>
echo "-------------------------------------------------------------
echo " $IS_SELECTEDM M)
echo " "
echo " $IS_SELECTED1 1)
echo " $IS_SELECTED2 2)
echo " $IS_SELECTED3 3)
echo " $IS_SELECTED4 4)
echo " "
echo " $IS_SELECTEDX X)
echo " "
echo " $IS_SELECTEDE E)
echo "Choose: "
read CHOICE
if [ "$CHOICE" == "0" ]
then
   echo "Nothing Here"
View Manual"
Drop Tables"
Create Tables"
Populate Tables"
Query Tables"
Force/Stop/Kill Oracle DB"
End/Exit"
elif [ "$CHOICE" == "1" ]
then
   bash drop_tables.sh
   Pause
elif [ "$CHOICE" == "2" ]
then
   bash create_tables.sh
   Pause
elif [ "$CHOICE" == "3" ]
then
   bash populate_tables.sh
   Pause
elif [ "$CHOICE" == "4" ]
then

         bash queries.sh
            Pause
      elif [ "$CHOICE" == "E" ]
      then
exit fi
done }
#--COMMENTS BLOCK--
# Main Program
#--COMMENTS BLOCK--
ProgramStart()
{
   StartMessage
   while [ 1 ]
   do
MainMenu
done }
ProgramStart
