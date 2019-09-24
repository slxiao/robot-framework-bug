import threading
import SocketServer
import SimpleHTTPServer

class MyLibrary(object):
    ROBOT_LIBRARY_SCOPE = 'TEST CASE'
    handler = SimpleHTTPServer.SimpleHTTPRequestHandler
    def __init__(self, host="127.0.0.1", port=12345):
        self.server = SocketServer.TCPServer((host, port), self.handler)
        self.server_thread = threading.Thread(target=self.server.serve_forever)
        self.server_thread.daemon = True

    def start_http_server(self):
        self.server_thread.start()

    def stop_http_server(self):
        self.server.shutdown()
        self.server.server_close()