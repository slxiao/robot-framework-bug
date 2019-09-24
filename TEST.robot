***Settings***
Library    Process
Library    MyLibrary.py

***Test Cases***
Test Case one
    Start Http Server
    Start Process    tail    -f    
    Stop Http Server

Test Case two
    Start Http Server 
    Stop Http Server
