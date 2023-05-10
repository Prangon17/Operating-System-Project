whiptail --title "Home Page" --msgbox "Welcome To File Controlling System of Operating System ARP... " 10 65

opt1=$(
whiptail --title "Operating Systems" --menu "Enter your choice" 16 60 9 \
	1 "List All Files and Directories."   \
	2 "Create New Files."  \
	3 "Delete Existing Files." \
	4 "Rename Files." \
	5 "Edit File Content." \
	6 "Searching Files." \
	7 "View Content of File." \
	8 "Details of Particular File." \
	9 "Sort File Content." \
	10 "Sort Files in a Directory." \
	11 "List only Directories in Folders." \
	12 "List Files of Particular Extension." \
	13 "Count Number of Directories." \
	14 "Count Number of Files." \
	0 "End Menu"  3>&2 2>&1 1>&3	
)

if [ $opt1 -eq 1 ]
then
echo "Showing all files and directories...."

{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Loading..." 6 50 0
 ls
 echo " "
 
elif [ $opt1 -eq 2 ]
then
 echo "Enter File Name: "
 
 read filename
 
 touch filename
 { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Creating..." 6 50 0
sleep 3
 echo "File Created Successfully"
 echo " "

elif [ $opt1 -eq 3 ]
then

 echo "Enter name of File you want to Delete!"
 read delfile
 
 if [ -f "$delfile" ];
 then
   rm $delfile
   { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Deleting..." 6 50 0
sleep 3
   echo "Successfully Deleted."
   echo " "
 
 else
   echo "File Does not Exist..Try again"
   echo " "
 fi
 
 
elif [ $opt1 -eq 4 ]
then

 echo "Enter Old Name of File with Extension.."
 read old
 
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Checking File..." 6 50 0
sleep 3
 if [ -f "$old" ];
 then
    echo "Now Enter New Name for file with Extension"
    read new
    mv $old $new
    { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Renaming..." 6 50 0
sleep 3
    echo "Successfully Rename."
    echo "Now Your File Exist with $new Name"
 else
    echo "$old does not exist..Try again with correct filename."
 fi
echo " "

elif [ $opt1 -eq 5 ]
then
 echo "Enter File Name with Extension : "
 read edit
 
 { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Checking File..." 6 50 0
sleep 3

 
 if [ -f "$edit" ];
 then
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Opening..." 6 50 0
sleep 3
    nano $edit
 echo " "
 
 else
    echo "$edit File does not exist..Try again."
 fi

elif [ $opt1 -eq 6 ]
then
  echo "Search files here.."
  echo "Enter File Name with Extension to search"
  read f
 
 if [ -f "$f" ];
 then
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Searching for $f file..." 6 50 0
sleep 5
    echo "File Found."
    find /home -name $f
    echo " "
    
 else
    echo "File Does not Exist..Try again."
 echo " "
 fi

elif [ $opt1 -eq 7 ]
then
 echo "Enter File Name : "
 read readfile

 if [ -f "$readfile" ];
 then
 { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Showing..." 6 50 0
sleep 3
   cat $readfile
 else
   echo "$readfile does not exist"
   fi
   
echo " "
elif [ $opt1 -eq 8 ]
then
 echo "Enter File Name with Extension to see Detail : "
 read detail
 
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Checking..." 6 50 0
sleep 3
 if [ -f "$detail" ];
 then
    { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Loading Properties..." 6 50 0
sleep 3
 stat $detail
 
 else
    echo "$detail File does not exist..Try again"
 fi
echo " "

elif [ $opt1 -eq 9 ]
then
 echo "Sort files content here.."
 echo "Enter File Name with Extension to sort :"
 read sortfile

 if [ -f "$sortfile" ];
 then
 { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Sorting..." 6 50 0
sleep 3
    sort $sortfile
 else
    echo "$sortfile File does not exist..Try again."
 fi
 
echo " "

elif [ $opt1 == 10 ]
then

 echo "Sort Files here.."
 echo "Your Request of Sorting file is Generated."
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Shorting..." 6 50 0
sleep 3
 ls | sort
 
 echo " "

elif [ $opt1 -eq 11 ]
then
 echo "showing all Directories..."
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Loading..." 6 50 0

 
 ls -d */
 
 echo " "
 
elif [ $opt1 -eq 12 ]
then

 echo "Enter List type extenstion: "
 read ext
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Showing..." 6 50 0

 ls *$ext
 
echo " "

elif [ $opt1 -eq 13 ]
then

{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Loading..." 6 50 0
sleep 3
 
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Counting..." 6 50 0

 
 echo "Number of Directories are : "
 echo */ | wc -w
 
echo " "

elif [ $opt1 -eq 14 ]
then
{ 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Counting..." 6 50 0
sleep 3
 echo "Number of Files are : "
 ls -l | grep -v 'total' | grep -v '^d' | wc -l
 
echo " "

elif [ $opt1 == 0 ]
then
 { 
for ((i = 0 ; i <= 100 ; i+=5)); do
        sleep 0.1
        echo $i
    done
} | whiptail --gauge "Closing..." 6 50 0
echo "Successfully Exit..."
 exit 0
 
else
  echo "Invalid Input!.Try again...."
fi
