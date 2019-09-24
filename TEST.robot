#https://stackoverflow.com/questions/38894081/python-subprocess-popen-subprocess-causes-sockets-to-remain-open
#https://github.com/robotframework/robotframework/issues/2794
#Bug can be seen in Robot Framework 3.0.2, it's fixed in Robot Framework 3.0.3
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
