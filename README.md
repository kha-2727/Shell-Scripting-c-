# Shell-Scripting-c-
Config files for my GitHub profile.
Q1))Write a script that takes two parametric variables:

./script pattern_option number

where
pattern_option = {left, right, full}, number = could be any positive integer
and output the pattern depending on the input parameters as shown in Fig 1. Generate error
messages for invalid input parameter.


Q2)Write a script that displays a main menu and perform tasks based on the input value.
Valid input values = {1, 2, 3, 4, exit}.
The different options 1,2,3,4 will display the output as follow:
1. Input a filename from user and display permissions of that particular file. Then
invert the permissions e.g. If permissions were r-x change them to -w-. Then again
display the updated permissions of that file.
2. Input a filename and a string and search it in the file. Output the lines of file where
that string is found. But if the string contains a dot(.) it means any character can
fill the place. For example: 

string = c.t = {cat, cot, c t,}

3. Create a file dummy.txt and add the content of all the files in the current directory to
dummy. But copy the content in such a way that if files in current directory = {f1, f2,
f3, f4, ..., fn}. Then copy first N lines of files at even location {f2, f4,.} and last N lines
of files at odd location {f1,f3,. }. Input value of N from user.
4. Input a filename from user and check modified date of that file. If modified date is
greater than 24 hours from the current time change the modified date to current date.
Along with displaying the output on terminal, maintain a log file that contains the
information of the script. Format of the log file is given below:
