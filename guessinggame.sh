
#!/bin/bash
# guessing game 

let "filenum=0"
let "dirnum=0"

for i in $( ls )
do
   if [ -d $i ]
   then
      let dirnum+=1
   else
      let filenum+=1
   fi
done

while  :
do
	read -p "there is a folder please guess how many file in this folder: " file_number
    if [ $file_number -eq $filenum ]
    then
       	echo "bingo, Congratulations!"
       	exit
    	elif [ $file_number -gt $filenum ]
    	then
           	echo "Oops, it is big"
      	else
           	echo "Oops, it is small"
 	fi
done  
