# Introduction

This repo reproduces the robot framework bug reported in [#2794](https://github.com/robotframework/robotframework/issues/2794)

Bug can be seen in Robot Framework 3.0.2, it's fixed in Robot Framework 3.0.3

Similar issue found also in python:

[python-subprocess-popen-subprocess-causes-sockets-to-remain-open](https://stackoverflow.com/questions/38894081/python-subprocess-popen-subprocess-causes-sockets-to-remain-open)

# How
> Install Robot Framework 3.0.2

```sh
pip install robotframework==3.0.2
```

> Run test case
```sh
robot .
```

Expected results
```sh
robot-framework-bug[master]# robot .
==============================================================================
Robot-Framework-Bug
==============================================================================
Robot-Framework-Bug.TEST
==============================================================================
Test Case one                                                         | PASS |
------------------------------------------------------------------------------
Test Case two                                                         | FAIL |
Initializing test library 'MyLibrary' with no arguments failed: error: [Errno 98] Address already in use
Traceback (most recent call last):
  File "/root/workspace/github/slxiao/robot-framework-bug/MyLibrary.py", line 9, in __init__
    self.server = SocketServer.TCPServer((host, port), self.handler)
  File "/usr/lib/python2.7/SocketServer.py", line 417, in __init__
    self.server_bind()
  File "/usr/lib/python2.7/SocketServer.py", line 431, in server_bind
    self.socket.bind(self.server_address)
  File "/usr/lib/python2.7/socket.py", line 228, in meth
    return getattr(self._sock,name)(*args)
------------------------------------------------------------------------------
Robot-Framework-Bug.TEST                                              | FAIL |
2 critical tests, 1 passed, 1 failed
2 tests total, 1 passed, 1 failed
==============================================================================
Robot-Framework-Bug                                                   | FAIL |
2 critical tests, 1 passed, 1 failed
2 tests total, 1 passed, 1 failed
==============================================================================
......
```
# Lisense
None


