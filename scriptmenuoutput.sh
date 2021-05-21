# !/bin/bash
 
input=0
echo "Press 1 to change permissions of a file"
echo "Press 2 to output lines with specific string"
echo "Press 3 to copy multiples file lines to dummy file"
echo "Press 4 to check modified date of a specific file"
echo "Press exit to terminate the program "

read input


if [ $input = 1 ]; then 

echo "Enter any file name "
read filename

b=$( ls -l $filename )
dateis=$( date )

echo "Option1 Selected at: " $dateis >> mylogfile.txt
echo "File name: " $filename >> mylogfile.txt
echo "File permissions are: " $b >> mylogfile.txt

echo "File  $filename permissions are:"
echo $b


if [ ${b:1:1} = r ]; then
    chmod u-r $filename
elif [ ${b:1:1} = "-" ]; then
    chmod u+r $filename
fi     
    
if [ ${b:4:1} = r ];then
       chmod g-r $filename
else
       chmod g+r $filename
fi             
if [ ${b:7:1} = r ];then
        chmod o-r $filename
else
          chmod o+r $filename
fi   
if [ ${b:2:1} = w ];then
    chmod u-w $filename
else 
    chmod u+w $filename
fi        
if [ ${b:5:1} = w ];then
       chmod g-w $filename
else 
          chmod g+w $filename   
      
fi
if [ ${b:8:1} = w ];then
       chmod o-w $filename
else
          chmod o+w $filename
fi
if [ ${b:3:1} = x ];then
       chmod u-x $filename
else
          chmod u+x $filename
fi
if [ ${b:6:1} = x ];then
       chmod g-x $filename
else
          chmod g+x $filename
fi
if [ ${b:9:1} = x ];then
       chmod o-x $filename
else
          chmod o+x $filename
fi
     
    
    echo "Updated permissions are "
    
 
b=$( ls -l $filename )
echo $b
echo "Updated permissions are: " $b >> mylogfile.txt
echo "Press 1 to change permissions of a file"
echo "Press 2 to output lines with specific string"
echo "Press 3 to copy multiples file lines to dummy file"
echo "Press 4 to check modified date of a specific file"
echo "Press exit to terminate the program "
read input
fi
if [ $input = 2 ]; then 
echo "Enter your string"
read string1
echo "enter file name"
read filename

grep -i "$string1" $filename
echo "Option2 Selected at: " $dateis >> mylogfile.txt
echo "String " $string1 >> mylogfile.txt
echo "Filename: " $filename >> mylogfile.txt
echo "Output all lines of " $filename "that contains string" $string1 >> mylogfile.txt
echo "Select any option again"
read input
 fi
 
if [ $input = 3 ]; then
echo "Enter number of lines of files"
read N
echo "Option3 Selected at: " $dateis >> mylogfile.txt
touch dummy.txt
chmod a+rwx $dummy.txt

filechecker=0

for FILE in *;
do 
  # if [ -f $FILE ]; then
   
       t=$(( filechecker%2 ))
       m=0
       if [ $t -eq 0 ]; then
       echo "Files at even location"
       echo $FILE
      # head -$N $File | cat - $dummy.txt > $dummy.txt."$$" && mv $dummy.txt."$$" $dummy.txt
       head  -$N $FILE >> $dummy.txt
         else
        tail  -$N $FILE >> $dummy.txt 
         echo "Files at odd location"
       echo $FILE
          fi
          filechecker=$(( $filechecker+1 ))
   # fi      
done
 
 cat $dummy.txt
echo "Select any option again"
 read input
fi
   
if [ $input = 4 ]; then
echo "ENter a file name"
read filename

dateis=$( date )


store=$( date -r  $filename )
store1=$( date )



storeday=${store:4:2}
store1day=${store1:4:2}

DIFF=$(( store1day-storeday ))



hours=0
minutes=0
seconds=0


seconds=${store:11:8}
parse1=${seconds:0:2}
parse2=${seconds:3:2}
firstt=${parse2:3:1}
secondt=${parse2:4:1} 
seconds1=${seconds:6:1}
seconds2=${seconds:7:1}


if test $parse1 -gt 0 
then
     first=${parse1:0:1}
       second=${parse1:1:1}  
           if test $first -gt 0 
            then       
             if  test $second -gt 0  
            then        
            r=${parse1:0:2} 
            fi 
            elif test $first -gt 0 
            then       
            r=${parse1:0:1} 
            elif test $second -gt 0 
            then       
            r=${parse1:1:1}
            fi 
else 
r=0          
fi
     
hours=$(( r*3600 ))


 n=0
if [ $firstt=$n ]; then
s=$secondt
elif [ $secondt=$n ]; then
s=$firstt
else 
s=$parse2
fi

if [ $s=$n ]; then   
minutes=0
else 
minutes=$(( s*60 ))
fi

newtime=$(( $hours + $minutes + $seconds1 + $seconds2))
newtime=$(( newtime*DIFF ))

if [ $newtime -lt 86400 ]; then
    echo "File was last modified within 24 hours"
else
    echo "File was modified before 24 hours"
    echo "changing file modified date to current date"
    touch -d $store1 $filename
fi    
echo "Option4 Selected at: " $dateis >> mylogfile.txt
echo "File name: " $filename >> mylogfile.txt
echo "Current modfied date: " $dateis >> mylogfile.txt
echo "Select any option again"
read input    
fi
if [ $input = exit ]; then 
exit 1
fi
