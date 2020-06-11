checkExist() {
	
	echo "Naishar Shah \n 1947258"
	
	echo "Enter Filename : "
	read filename

	#Checking Whether file exist or not -> if file doesn't exist exit OUT OF PROGRAM
	test ! -f $filename && echo "File does not exist" && exit 1

	echo "Enter text you want to search : "
	read pattern

	count=`grep -c $pattern $filename`
	
	if [[ $count -gt 0 ]]
	then
		echo Frequency is : $count
		echo "Text Exist"
	else
		echo Frequency is : $count
		echo "Text doesn't exist"
	fi
}

#Function Call.......
checkExist
