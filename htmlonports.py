# Really sorry for vibecoding this script, i am still learning python and didn't know what i was doing! Might revamp it later, remind me or something lol.
import http.server
import socketserver
import threading

files = [
    ("/home/ave/file1.html", 2006),
    ("/home/ave/file2.html", 2001),
    ("/home/ave/file3.html", 2002),
]


def make_handler(file_path):
    class CustomHandler(http.server.SimpleHTTPRequestHandler):
        def do_GET(self):
            try:
                with open(file_path, "rb") as f:
                    self.send_response(200)
                    self.send_header("Content-type", "text/html")
                    self.end_headers()
                    self.wfile.write(f.read())
            except Exception as e:
                self.send_response(500)
                self.end_headers()
                self.wfile.write(str(e).encode())

    return CustomHandler


def start_server(file_path, port):
    handler = make_handler(file_path)
    with socketserver.TCPServer(("", port), handler) as httpd:
        print(f"Serving {file_path} on http://localhost:{port}")
        httpd.serve_forever()


threads = []

for file_path, port in files:
    t = threading.Thread(target=start_server, args=(file_path, port), daemon=True)
    t.start()
    threads.append(t)

print("All servers running...")
try:
    while True:
        pass
except KeyboardInterrupt:
    print("Stopping servers...")
